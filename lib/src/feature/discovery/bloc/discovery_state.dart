part of 'discovery_bloc.dart';

@freezed
class DiscoveryState with _$DiscoveryState {
  const factory DiscoveryState.initial({
    required DiscoveryData data,
  }) = DiscoveryInitialState;
  const factory DiscoveryState.loading({
    required DiscoveryData data,
  }) = DiscoveryLoadingState;
  const factory DiscoveryState.loadSuccess({
    required DiscoveryData data,
    required List<BluetoothDevice> devices,
  }) = DiscoveryLoadSuccessState;
  const factory DiscoveryState.loadFailure({
    required DiscoveryData data,
    required String error,
  }) = DiscoveryLoadFailureState;
}
