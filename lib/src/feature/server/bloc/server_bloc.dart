import 'dart:async';

import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offline_messenger/src/feature/server/model/connection.dart';
import 'package:stream_bloc/stream_bloc.dart';

part 'server_event.dart';
part 'server_state.dart';
part 'server_bloc.freezed.dart';

class ServerBloc extends StreamBloc<ServerEvent, ServerState> {
  /// {Address: Connection}
  final Map<String, Connection> connections = {};

  ServerBloc() : super(const ServerLoadingState()) {
    _getServerInfo();
    _listenBondedDevices();
  }

  @override
  Stream<ServerState> mapEventToStates(ServerEvent event) => event.when(
        getServerInfo: _getServerInfo,
        sendMessages: _sendMessages,
      );

  Future<void> _listenBondedDevices() async {
    Timer.periodic(const Duration(seconds: 5), (Timer t) async {
      final bondedDevices =
          await FlutterBluetoothSerial.instance.getBondedDevices();

      for (final r in bondedDevices) {
        add(SendMessagesEvent(receiver: r));
      }
    });
  }

  Stream<ServerState> _getServerInfo() => _performMutation(() async {
        final serverName = await FlutterBluetoothSerial.instance.name;
        final serverAddress = await FlutterBluetoothSerial.instance.address;

        return ServerLoadSuccessState(
          serverName: serverName,
          serverAddress: serverAddress ?? '',
        );
      });

  Stream<ServerState> _sendMessages(BluetoothDevice receiver) =>
      _performMutation(() async {
        if (connections.containsKey(receiver.address)) {
          // TODO: send all messages
        } else {
          final bluetoothConnection =
              await BluetoothConnection.toAddress(receiver.address);
          final connection = Connection(
            connection: bluetoothConnection,
            device: receiver,
          );
          connections[receiver.address] = connection;
          await _listenConnection(connection);
        }

        return state;
      });

  Future<void> _listenConnection(Connection connection) async {
    connection.connection.input?.listen((data) {
      // TODO: add message to db
    }).onDone(() async {
      final bondState = await FlutterBluetoothSerial.instance
          .getBondStateForAddress(connection.device.address);
      final isBonded = bondState.isBonded;
      if (isBonded) {
        await FlutterBluetoothSerial.instance
            .removeDeviceBondWithAddress(connection.device.address);
      }
      await connection.connection.close();
      connections.remove(connection.device.address);
    });
  }

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
