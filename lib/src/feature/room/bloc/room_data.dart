part of 'room_bloc.dart';

@freezed
class RoomData with _$RoomData {
  const factory RoomData({
    required bool isDiscovering,
    required bool isBluetoothEnabled,
  }) = _RoomData;
}
