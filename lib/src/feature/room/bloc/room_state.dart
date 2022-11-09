part of 'room_bloc.dart';

@freezed
class RoomState with _$RoomState {
  const factory RoomState.initial({
    required RoomData data,
  }) = RoomInitialState;
  const factory RoomState.roomOwner({
    required RoomData data,
    List<BluetoothDevice>? connectedDevices,
  }) = RoomOwnerState;
  const factory RoomState.roomParticipant({
    required RoomData data,
    BluetoothDevice? owner,
  }) = RoomParticipantState;
  const factory RoomState.error({
    required RoomData data,
    required String error,
  }) = RoomErrorState;
}
