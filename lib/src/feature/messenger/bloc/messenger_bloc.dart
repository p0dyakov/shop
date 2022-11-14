import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offline_messenger/src/core/model/message.dart';
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
    _checkConnection();
  }

  MessengerData get _data => state.data;

  @override
  Stream<MessengerState> mapEventToStates(MessengerEvent event) => event.when(
        sendMessage: _onSendMessage,
        disconnect: _onDisconnect,
      );

  Future<void> _checkConnection() async {
    try {
      if (_connection == null) {
        _connection = await BluetoothConnection.toAddress(_server.address);
        await _listenConnection();
      }
    } on Object catch (e) {
      debugPrint('Can not connect');
    }
  }

  Future<void> _listenConnection() async {
    _connection?.input?.listen((data) async {
      // Parse data and emit it
    }).onDone(() async {
      add(const DisconnectEvent());
    });
  }

  Stream<MessengerState> _onDisconnect() => _performMutation(() async {
        await _connection?.close();
        _connection = null;

        return state;
      });

  Stream<MessengerState> _onSendMessage(String message) =>
      _performMutation(() async {
        final name = await FlutterBluetoothSerial.instance.name;
        final address = await FlutterBluetoothSerial.instance.address;

        final messages = state.whenOrNull(
              loadSuccess: (_, messages) => List<Message>.from(messages),
            ) ??
            []
          ..add(
            Message(
              sended: DateTime.now(),
              message: message,
              senderAddress: address ?? '',
              senderName: name ?? '',
            ),
          );

        return MessengerLoadSuccessState(
          data: state.data,
          messages: messages,
        );
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
