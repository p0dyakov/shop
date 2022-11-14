part of 'server_bloc.dart';

@freezed
class ServerEvent with _$ServerEvent {
  const factory ServerEvent.getServerInfo() = GetServerInfoEvent;
  const factory ServerEvent.serverDisconnectEvent() = ServerDisconnectEvent;
  const factory ServerEvent.enableDiscoverable() =
      ServerEnableDiscoverableEvent;
}
