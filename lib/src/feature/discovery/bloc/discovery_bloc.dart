import 'dart:async';

import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_bloc/stream_bloc.dart';
import 'package:transmitter/src/feature/discovery/model/discovery_data.dart';

part 'discovery_event.dart';
part 'discovery_state.dart';
part 'discovery_bloc.freezed.dart';

class DiscoveryBloc extends StreamBloc<DiscoveryEvent, DiscoveryState> {
  late final Stream<BluetoothDiscoveryResult> _discoveryStream;

  DiscoveryBloc()
      : super(
          const DiscoveryInitialState(
            data: DiscoveryData(),
          ),
        ) {
    _listenDiscovery();
  }

  DiscoveryData get _data => state.data;

  @override
  Stream<DiscoveryState> mapEventToStates(DiscoveryEvent event) => event.when(
        requestEnableBluetooth: _onRequestEnableBluetooth,
      );

  Future<void> _listenDiscovery() async {
    _discoveryStream = FlutterBluetoothSerial.instance.startDiscovery();

    try {
      _discoveryStream.listen(
        (r) {
          emit(
            DiscoveryLoadSuccessState(
              data: state.data,
              devices: [],
            ),
          );
        },
      );
    } on Object catch (e) {
      emit(DiscoveryLoadFailureState(data: _data, error: e.toString()));
    }
  }

  Stream<DiscoveryState> _onRequestEnableBluetooth() =>
      _performMutation(() async {
        await FlutterBluetoothSerial.instance.requestEnable();

        return state;
      });

  Stream<DiscoveryState> _performMutation(
    Future<DiscoveryState> Function() body,
  ) async* {
    try {
      final newState = await body();
      yield newState;
    } on Object catch (e) {
      yield DiscoveryLoadFailureState(data: _data, error: e.toString());
    }
  }
}
