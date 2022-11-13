part of 'discovery_bloc.dart';

@freezed
class DiscoveryState with _$DiscoveryState {
  const factory DiscoveryState.needPermissions({
    required List<PermissionType> permissions,
    required bool isBluetoothEnabled,
  }) = DiscoveryNeedPermissionsState;
  const factory DiscoveryState.loading() = DiscoveryLoadingState;
  const factory DiscoveryState.loadSuccess({
    required List<BluetoothDevice> devices,
    required bool isDiscoverying,
  }) = DiscoveryLoadSuccessState;
  const factory DiscoveryState.loadFailure({
    required String error,
  }) = DiscoveryLoadFailureState;
}
