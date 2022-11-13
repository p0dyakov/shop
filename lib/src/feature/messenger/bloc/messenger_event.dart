part of 'messenger_bloc.dart';

@freezed
class MessengerEvent with _$MessengerEvent {
  const factory MessengerEvent.sendAudio({
    required File audio,
  }) = SendAudioEvent;
  const factory MessengerEvent.disconnect() = DisconnectEvent;
}
