part of 'room_bloc.dart';

@freezed
class RoomEvent with _$RoomEvent {
  const factory RoomEvent.startDiscovery() = StartDiscoveryEvent;
  const factory RoomEvent.stopDiscovery() = StopDiscoveryEvent;
  const factory RoomEvent.getConnectedDevices() = GetConnectedDevicesEvent;
  const factory RoomEvent.openBluetoothSettings() = OpenBluetoothSettingsEvent;
  const factory RoomEvent.roomInitial() = RoomInitialEvent;
  const factory RoomEvent.requestEnableBluetooth() =
      RequestEnableBluetoothEvent;
  const factory RoomEvent.selectRole({
    required RoomRole role,
  }) = SelectRoleEvent;
  const factory RoomEvent.changeDeviceName({
    required String name,
  }) = ChangeDeviceNameEvent;
  const factory RoomEvent.connect({
    required BluetoothDevice device,
  }) = ConnectEvent;
  const factory RoomEvent.disconnect({
    required BluetoothDevice device,
  }) = DisconnectEvent;
}
