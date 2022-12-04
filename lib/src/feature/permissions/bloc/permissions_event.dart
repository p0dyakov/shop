part of 'permissions_bloc.dart';

@freezed
class PermissionsEvent with _$PermissionsEvent {
  const factory PermissionsEvent.getPermission({
    required PermissionType permission,
  }) = GetPermissionEvent;
}
