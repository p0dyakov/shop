import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offline_messenger/src/core/model/message.dart';
import 'package:offline_messenger/src/feature/server/model/connection.dart';
import 'package:offline_messenger/src/feature/server/repository/server_repository_interface.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stream_bloc/stream_bloc.dart';

part 'server_event.dart';
part 'server_state.dart';
part 'server_bloc.freezed.dart';

class ServerBloc extends StreamBloc<ServerEvent, ServerState> {
  late final IServerRepository _serverRepository;
  Timer? _listenBondedTimer;
  Timer? _requestDiscoverableTimer;
  static const _discoverableTime = 3600;

  /// { Receiver Device Address: Connection to Receiver }
  final Map<String, Connection> _connections = {};

  Future<String> get _path async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  ServerBloc({required IServerRepository serverRepository})
      : super(const ServerLoadingState()) {
    _serverRepository = serverRepository;
    add(const GetServerInfoEvent());
    add(const ServerEnableDiscoverableEvent());
    _listenBondedDevices();
  }

  Future<void> _listenBondedDevices() async {
    _listenBondedTimer =
        Timer.periodic(const Duration(seconds: 5), (Timer _) async {
      final bondedDevices =
          await FlutterBluetoothSerial.instance.getBondedDevices();
      final messages = await _getMessages();
      for (final r in bondedDevices) {
        debugPrint('RR: ' + '${r.name} found! ');
        debugPrint('RR: ' + r.address);
        await _checkConnection(r);
        await _sendMessages(r, messages);
      }
    });
  }

  Future<Uint8List> _getMessages() async {
    final data = await _serverRepository.currentData();
    final messages = data.messages;
    final file = File('${await _path}/messages.json');
    var result = '';
    for (var i = 0; i < messages.length; i++) {
      result = result +
          messages[i].toJson().toString() +
          (i == messages.length - 1 ? '' : ',');
    }
    await file.writeAsString('[$result]');

    return file.readAsBytesSync();
  }

  Future<void> _sendMessages(
    BluetoothDevice receiver,
    Uint8List messages,
  ) async {
    try {
      _connections[receiver.address]?.connection.output.add(messages);
    } on Object catch (e) {
      emit(
        ServerLoadFailureState(
          error: e.toString(),
        ),
      );
    }
  }

  Future<void> _checkConnection(BluetoothDevice receiver) async {
    try {
      if (!_connections.containsKey(receiver.address)) {
        final bluetoothConnection =
            await BluetoothConnection.toAddress(receiver.address);
        final connection = Connection(
          connection: bluetoothConnection,
          device: receiver,
        );
        _connections[receiver.address] = connection;
        await _listenConnection(connection);
      }
    } on Object catch (e) {
      debugPrint('Can not connect');
    }
  }

  Future<void> _listenConnection(Connection connection) async {
    connection.connection.input?.listen((data) async {
      await _saveMessage(data);
    }).onDone(() async {
      await _disconnect(connection);
    });
  }

  Future<void> _disconnect(Connection connection) async {
    try {
      await connection.connection.close();
      _connections.remove(connection.device.address);
    } on Object catch (e) {
      debugPrint('Can not disconnect');
    }
  }

  Future<void> _saveMessage(Uint8List data) async {
    try {
      final file = File('${await _path}/message.json');
      await file.writeAsBytes(data);
      final messageJson =
          jsonDecode(await file.readAsString()) as Map<String, dynamic>;
      final message = Message.fromJson(messageJson);
      await _serverRepository.addMessage(message);
    } on Object catch (e) {
      debugPrint('Can not parse data');
    }
  }

  @override
  Stream<ServerState> mapEventToStates(ServerEvent event) => event.when(
        getServerInfo: _getServerInfo,
        serverDisconnectEvent: _onServerDisconnectEvent,
        enableDiscoverable: _enableDiscoverable,
      );

  Stream<ServerState> _enableDiscoverable() => _performMutation(() async {
        await FlutterBluetoothSerial.instance
            .requestDiscoverable(_discoverableTime);

        if (await FlutterBluetoothSerial.instance.isDiscoverable ?? false) {
          _requestDiscoverableTimer = Timer.periodic(
            const Duration(seconds: _discoverableTime),
            (Timer _) async {
              add(const ServerEnableDiscoverableEvent());
            },
          );
          add(const GetServerInfoEvent());

          return const ServerLoadingState();
        } else {
          return const ServerNeedDiscoverableState();
        }
      });

  Stream<ServerState> _getServerInfo() => _performMutation(() async {
        final serverName = await FlutterBluetoothSerial.instance.name;
        final serverAddress = await FlutterBluetoothSerial.instance.address;

        return ServerLoadSuccessState(
          serverName: serverName,
          serverAddress: serverAddress ?? '',
        );
      });

  Stream<ServerState> _onServerDisconnectEvent() => _performMutation(() async {
        _connections.forEach((_, c) async {
          // await _disconnect(c);
        });
        _requestDiscoverableTimer?.cancel();
        _requestDiscoverableTimer = null;
        _listenBondedTimer?.cancel();
        _listenBondedTimer = null;

        return state;
      });

  Stream<ServerState> _performMutation(
    Future<ServerState> Function() body,
  ) async* {
    try {
      final newState = await body();
      yield newState;
    } on Object catch (e) {
      yield ServerLoadFailureState(
        error: e.toString(),
      );
    }
  }
}
