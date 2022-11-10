part of 'transmitter_bloc.dart';

@freezed
class TransmitterEvent with _$TransmitterEvent {
  const factory TransmitterEvent.sendAudio({
    required File audio,
  }) = SendAudioEvent;
  const factory TransmitterEvent.disconnect() = DisconnectEvent;
}
