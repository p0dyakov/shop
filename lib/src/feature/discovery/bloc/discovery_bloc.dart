import 'dart:async';

import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offline_messenger/src/feature/discovery/model/permissions.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:stream_bloc/stream_bloc.dart';

part 'discovery_bloc.freezed.dart';
part 'discovery_event.dart';
part 'discovery_state.dart';

class DiscoveryBloc extends StreamBloc<DiscoveryEvent, DiscoveryState> {
  Stream<BluetoothDiscoveryResult>? _discoveryStream;

  DiscoveryBloc() : super(const DiscoveryLoadingState()) {
    _check();
  }

  Future<bool> get _isBluetoothEnabled async {
    final isEnabled = await FlutterBluetoothSerial.instance.isEnabled;

    return isEnabled ?? false;
  }

  @override
  Stream<DiscoveryState> mapEventToStates(DiscoveryEvent event) => event.when(
        requestEnableBluetooth: _onRequestEnableBluetooth,
        startDiscovery: _onStartDiscovery,
        getPermission: _onGetPermission,
      );

  Future<List<PermissionType>> _checkPermissions() async {
    final permissions = <PermissionType>[];

    if (await Permission.bluetoothScan.isDenied) {
      permissions.add(PermissionType.bluetoothScan);
    }
    if (await Permission.bluetoothConnect.isDenied) {
      permissions.add(PermissionType.bluetoothConnect);
    }
    if (await Permission.bluetooth.isDenied) {
      permissions.add(PermissionType.bluetooth);
    }

    return permissions;
  }

  Future<void> _check() async {
    final permissions = await _checkPermissions();

    if (permissions.isEmpty && await _isBluetoothEnabled) {
      add(const StartDiscoveryEvent());
    } else {
      emit(
        DiscoveryNeedPermissionsState(
          permissions: permissions,
          isBluetoothEnabled: await _isBluetoothEnabled,
        ),
      );
    }

    FlutterBluetoothSerial.instance
        .onStateChanged()
        .listen((BluetoothState state) async {
      final permissions = await _checkPermissions();

      if (permissions.isEmpty && state.isEnabled) {
        add(const StartDiscoveryEvent());
      } else {
        emit(
          DiscoveryNeedPermissionsState(
            permissions: permissions,
            isBluetoothEnabled: state.isEnabled,
          ),
        );
      }
    });
  }

  Stream<DiscoveryState> _onStartDiscovery() async* {
    try {
      state.whenOrNull(
        loadSuccess: (devices, _) {
          emit(
            const DiscoveryLoadSuccessState(
              isDiscoverying: true,
              devices: [],
            ),
          );
        },
      );

      _discoveryStream = FlutterBluetoothSerial.instance.startDiscovery();
      final devices = <BluetoothDevice>[];
      _discoveryStream?.listen(
        (r) {
          if (!devices.contains(r.device)) devices.add(r.device);

          // TODO: remove emit
          emit(
            DiscoveryLoadSuccessState(
              isDiscoverying: true,
              devices: devices,
            ),
          );
        },
      ).onDone(() {
        _discoveryStream = null;
        if (state is DiscoveryLoadSuccessState) {
          state.whenOrNull(
            loadSuccess: (devices, _) => emit(
              DiscoveryLoadSuccessState(
                isDiscoverying: false,
                devices: devices,
              ),
            ),
          );
        }
      });
    } on Object catch (e) {
      emit(DiscoveryLoadFailureState(error: e.toString()));
    }
  }

  Stream<DiscoveryState> _onRequestEnableBluetooth() =>
      _performMutation(() async {
        await FlutterBluetoothSerial.instance.requestEnable();

        if (await _isBluetoothEnabled) {
          add(const StartDiscoveryEvent());

          return const DiscoveryLoadingState();
        }

        return state;
      });

  Stream<DiscoveryState> _onGetPermission(PermissionType permission) =>
      _performMutation(() async {
        var newPermissions = <PermissionType>[];

        await state.whenOrNull(
          needPermissions: (permissions, _) async {
            newPermissions = List.from(permissions);

            switch (permission) {
              case PermissionType.bluetoothScan:
                final result = await Permission.bluetoothScan.request();
                if (result.isGranted) {
                  newPermissions.remove(PermissionType.bluetoothScan);
                }
                break;
              case PermissionType.bluetoothConnect:
                final result = await Permission.bluetoothConnect.request();
                if (result.isGranted) {
                  newPermissions.remove(PermissionType.bluetoothConnect);
                }
                break;
              case PermissionType.bluetooth:
                final result = await Permission.bluetooth.request();
                if (result.isGranted) {
                  newPermissions.remove(PermissionType.bluetooth);
                }
                break;
            }
          },
        );

        if (newPermissions.isEmpty && await _isBluetoothEnabled) {
          add(const StartDiscoveryEvent());

          return const DiscoveryLoadingState();
        }

        return DiscoveryNeedPermissionsState(
          permissions: newPermissions,
          isBluetoothEnabled: await _isBluetoothEnabled,
        );
      });

  Stream<DiscoveryState> _performMutation(
    Future<DiscoveryState> Function() body,
  ) async* {
    try {
      final newState = await body();
      yield newState;
    } on Object catch (e) {
      yield DiscoveryLoadFailureState(error: e.toString());
    }
  }
}
