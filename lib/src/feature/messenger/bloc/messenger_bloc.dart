import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offline_messenger/src/feature/messenger/model/messenger_data.dart';
import 'package:stream_bloc/stream_bloc.dart';

part 'messenger_bloc.freezed.dart';
part 'messenger_event.dart';
part 'messenger_state.dart';

class MessengerBloc extends StreamBloc<MessengerEvent, MessengerState> {
  BluetoothConnection? _connection;
  late final BluetoothDevice _server;

  MessengerBloc({
    required BluetoothDevice server,
  }) : super(
          MessengerNeedPairState(
            data: MessengerData(server: server),
          ),
        ) {
    _server = server;
    _connectAndListen();
  }

  MessengerData get _data => state.data;

  @override
  Stream<MessengerState> mapEventToStates(MessengerEvent event) => event.when(
        sendAudio: _onSendAudio,
        disconnect: _onDisconnect,
      );

  Future<void> _connectAndListen() async {
    try {
      final bondState = await FlutterBluetoothSerial.instance
          .getBondStateForAddress(_server.address);
      var isBonded = bondState.isBonded;
      if (!isBonded) {
        isBonded = await FlutterBluetoothSerial.instance
                .bondDeviceAtAddress(_server.address) ??
            false;
      }

      _connection = await BluetoothConnection.toAddress(_server.address);
      final isConnected = _connection?.isConnected ?? false;

      if (isConnected) {
        emit(MessengerSlientState(data: _data));
      } else {
        throw Exception('Can not connect');
      }

      _connection?.input?.listen((data) {
        emit(
          MessengerTalkingState(
            data: _data,
            audio: File.fromRawPath(data),
          ),
        );
      }).onDone(() {
        throw Exception('Disconnected from another device');
      });
    } on Object catch (e) {
      emit(
        MessengerLoadFailureState(
          data: _data,
          error: e.toString(),
        ),
      );
    }
  }

  Stream<MessengerState> _onDisconnect() => _performMutation(() async {
        final bondState = await FlutterBluetoothSerial.instance
            .getBondStateForAddress(_server.address);
        final isBonded = bondState.isBonded;
        if (isBonded) {
          await FlutterBluetoothSerial.instance
              .removeDeviceBondWithAddress(_server.address);
        }
        await _connection?.close();
        _connection = null;

        return state;
      });

  Stream<MessengerState> _onSendAudio(File file) => _performMutation(() async {
        _connection?.output.add(Uint8List.fromList(file.readAsBytesSync()));

        return state;
      });

  Stream<MessengerState> _performMutation(
    Future<MessengerState> Function() body,
  ) async* {
    try {
      final newState = await body();
      yield newState;
    } on Object catch (e) {
      yield MessengerLoadFailureState(
        data: _data,
        error: e.toString(),
      );
    }
  }
}
