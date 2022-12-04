import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:photo_editor/src/feature/permissions/model/permissions.dart';
import 'package:stream_bloc/stream_bloc.dart';

part 'permissions_bloc.freezed.dart';
part 'permissions_event.dart';
part 'permissions_state.dart';

class PermissionsBloc extends StreamBloc<PermissionsEvent, PermissionsState> {
  PermissionsBloc() : super(const PermissionsLoadingState());

  @override
  Stream<PermissionsState> mapEventToStates(PermissionsEvent event) =>
      event.when(
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

  Stream<PermissionsState> _onGetPermission(PermissionType permission) =>
      _performMutation(() async {
        var newPermissions = <PermissionType>[];

        await state.whenOrNull(
          needPermissions: (permissions) async {
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

        return PermissionsNeedPermissionsState(
          permissions: newPermissions,
        );
      });

  Stream<PermissionsState> _performMutation(
    Future<PermissionsState> Function() body,
  ) async* {
    try {
      final newState = await body();
      yield newState;
    } on Object catch (e) {
      yield PermissionsLoadFailureState(error: e.toString());
    }
  }
}
