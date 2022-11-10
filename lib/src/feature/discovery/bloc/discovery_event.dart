part of 'discovery_bloc.dart';

@freezed
class DiscoveryEvent with _$DiscoveryEvent {
  const factory DiscoveryEvent.requestEnableBluetooth() =
      RequestEnableBluetoothEvent;
}
