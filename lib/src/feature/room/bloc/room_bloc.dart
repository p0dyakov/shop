import 'dart:async';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_bloc/stream_bloc.dart';
import 'package:transmitter/src/feature/room/model/role.dart';

part 'room_event.dart';
part 'room_data.dart';
part 'room_state.dart';
part 'room_bloc.freezed.dart';

class RoomBloc extends StreamBloc<RoomEvent, RoomState> {
  StreamSubscription<BluetoothDiscoveryResult>? _discoveryStreamSubscription;
  BluetoothConnection? connection;

  RoomBloc()
      : super(
          const RoomInitialState(
            data: RoomData(
              isDiscovering: false,
              isBluetoothEnabled: false,
            ),
          ),
        );

  @override
  Stream<RoomState> mapEventToStates(RoomEvent event) => event.when(
        startDiscovery: _onStartDiscovery,
        stopDiscovery: _onStopDiscovery,
        connect: _onConnect,
        disconnect: _onDisconnect,
        changeDeviceName: _onChangeDeviceName,
        getConnectedDevices: _onGetConnectedDevices,
        openBluetoothSettings: _onOpenBluetoothSettings,
        requestEnableBluetooth: _onRequestEnableBluetooth,
        selectRole: _onSelectRole,
        roomInitial: _onInitial,
      );

  void _listenDiscovery() {
    _discoveryStreamSubscription ??=
        FlutterBluetoothSerial.instance.startDiscovery().listen((r) {});
  }

  Future<void> _listenConnection(String adress) async {
    connection = await BluetoothConnection.toAddress(adress);

    connection?.input?.listen((data) {
      final file = File.fromRawPath(data);
    }).onDone(() {});
  }

  Stream<RoomState> _onInitial() =>
      _performMutation(() => Future.value(RoomInitialState(data: state.data)));

  Stream<RoomState> _onSend(BluetoothDevice device, File file) =>
      _performMutation(() async {
        if (connection == null) await _listenConnection(device.address);

        connection?.output.add(Uint8List.fromList(file.readAsBytesSync()));

        return state;
      });

  Stream<RoomState> _onSelectRole(RoomRole role) => _performMutation(() async {
        if (role == RoomRole.participant) {
          return RoomParticipantState(data: state.data);
        } else if (role == RoomRole.owner) {
          return RoomOwnerState(data: state.data);
        }

        return RoomInitialState(data: state.data);
      });

  Stream<RoomState> _onRequestEnableBluetooth() => _performMutation(() async {
        await FlutterBluetoothSerial.instance.requestEnable();

        return state;
      });

  Stream<RoomState> _onOpenBluetoothSettings() => _performMutation(() async {
        await FlutterBluetoothSerial.instance.openSettings();

        return state;
      });

  Stream<RoomState> _onGetConnectedDevices() => _performMutation(() async {
        if (state is! RoomOwnerState) {
          throw Exception('You are not owner of this room');
        }

        final devices =
            await FlutterBluetoothSerial.instance.getBondedDevices();

        return (state as RoomOwnerState).copyWith(connectedDevices: devices);
      });

  Stream<RoomState> _onChangeDeviceName(String name) =>
      _performMutation(() async {
        await FlutterBluetoothSerial.instance.changeName(name);

        return state;
      });

  Stream<RoomState> _onStartDiscovery() => _performMutation(() async {
        _listenDiscovery();

        return state.copyWith(data: state.data.copyWith(isDiscovering: true));
      });

  Stream<RoomState> _onStopDiscovery() => _performMutation(() async {
        await _discoveryStreamSubscription?.cancel();
        _discoveryStreamSubscription = null;

        return state.copyWith(data: state.data.copyWith(isDiscovering: false));
      });

  Stream<RoomState> _onConnect(BluetoothDevice device) =>
      _performMutation(() async {
        if (state is! RoomParticipantState) {
          throw Exception('You are not participant');
        }

        await FlutterBluetoothSerial.instance
            .bondDeviceAtAddress(device.address);
        await _listenConnection(device.address);

        return RoomParticipantState(data: state.data, owner: device);
      });

  Stream<RoomState> _onDisconnect(BluetoothDevice device) =>
      _performMutation(() async {
        await FlutterBluetoothSerial.instance
            .removeDeviceBondWithAddress(device.address);

        if (state is RoomOwnerState) {
          final connectedDevices = (state as RoomOwnerState).connectedDevices
            ?..remove(device);

          return (state as RoomOwnerState).copyWith(
            connectedDevices: connectedDevices,
          );
        }
        connection = null;

        return RoomInitialState(data: state.data);
      });

  Stream<RoomState> _performMutation(
    Future<RoomState> Function() body,
  ) async* {
    try {
      final newState = await body();
      yield newState;
    } on Object catch (e) {
      yield RoomErrorState(data: state.data, error: e.toString());
    }
  }
}
