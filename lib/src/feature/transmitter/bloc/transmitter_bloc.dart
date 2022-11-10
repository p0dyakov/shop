import 'dart:io';

import 'package:drift/drift.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_bloc/stream_bloc.dart';
import 'package:transmitter/src/feature/transmitter/model/transmitter_data.dart';

part 'transmitter_bloc.freezed.dart';
part 'transmitter_event.dart';
part 'transmitter_state.dart';

class TransmitterBloc extends StreamBloc<TransmitterEvent, TransmitterState> {
  late final BluetoothConnection _connection;
  late final BluetoothDevice _interlocutor;

  TransmitterBloc({
    required BluetoothDevice interlocutor,
  }) : super(
          TransmitterSlientState(
            data: TransmitterData(interlocutor: interlocutor),
          ),
        ) {
    _interlocutor = interlocutor;
    _listenConnection();
  }

  TransmitterData get _data => state.data;

  @override
  Stream<TransmitterState> mapEventToStates(TransmitterEvent event) =>
      event.when(
        sendAudio: _onSendAudio,
        disconnect: _onDisconnect,
      );

  Future<void> _listenConnection() async {
    await FlutterBluetoothSerial.instance
        .bondDeviceAtAddress(_interlocutor.address);
    _connection = await BluetoothConnection.toAddress(_interlocutor.address);

    _connection.input?.listen((data) {
      emit(
        TransmitterTalkingState(
          data: _data,
          audio: File.fromRawPath(data),
        ),
      );
    }).onDone(() {
      add(const DisconnectEvent());
    });
  }

  Stream<TransmitterState> _onDisconnect() => _performMutation(() async {
        await FlutterBluetoothSerial.instance
            .removeDeviceBondWithAddress(_interlocutor.address);
        _connection.dispose();

        return TransmitterLoadingState(data: _data);
      });

  Stream<TransmitterState> _onSendAudio(File file) =>
      _performMutation(() async {
        _connection.output.add(Uint8List.fromList(file.readAsBytesSync()));

        return state;
      });

  Stream<TransmitterState> _performMutation(
    Future<TransmitterState> Function() body,
  ) async* {
    try {
      final newState = await body();
      yield newState;
    } on Object catch (e) {
      yield TransmitterLoadFailureState(data: _data, error: e.toString());
    }
  }
}
