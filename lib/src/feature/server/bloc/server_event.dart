part of 'server_bloc.dart';

@freezed
class ServerEvent with _$ServerEvent {
  const factory ServerEvent.getServerInfo() = GetServerInfoEvent;
  const factory ServerEvent.sendMessages({
    required BluetoothDevice receiver,
  }) = SendMessagesEvent;
}
