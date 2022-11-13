part of 'discovery_bloc.dart';

@freezed
class DiscoveryEvent with _$DiscoveryEvent {
  const factory DiscoveryEvent.requestEnableBluetooth() =
      RequestEnableBluetoothEvent;
  const factory DiscoveryEvent.startDiscovery() = StartDiscoveryEvent;
  const factory DiscoveryEvent.getPermission({
    required PermissionType permission,
  }) = GetPermissionEvent;
}
