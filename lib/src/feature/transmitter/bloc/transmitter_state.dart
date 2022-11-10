part of 'transmitter_bloc.dart';

@freezed
class TransmitterState with _$TransmitterState {
  const factory TransmitterState.talking({
    required TransmitterData data,
    required File audio,
  }) = TransmitterTalkingState;
  const factory TransmitterState.slient({
    required TransmitterData data,
  }) = TransmitterSlientState;
  const factory TransmitterState.loading({
    required TransmitterData data,
  }) = TransmitterLoadingState;
  const factory TransmitterState.loadFailure({
    required TransmitterData data,
    required String error,
  }) = TransmitterLoadFailureState;
}
