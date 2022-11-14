part of 'messenger_bloc.dart';

@freezed
class MessengerEvent with _$MessengerEvent {
  const factory MessengerEvent.sendMessage({
    required String text,
  }) = SendMessageEvent;
  const factory MessengerEvent.disconnect() = DisconnectEvent;
}
