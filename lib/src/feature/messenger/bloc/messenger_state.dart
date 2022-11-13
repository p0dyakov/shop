part of 'messenger_bloc.dart';

@freezed
class MessengerState with _$MessengerState {
  const factory MessengerState.talking({
    required MessengerData data,
    required File audio,
  }) = MessengerTalkingState;
  const factory MessengerState.slient({
    required MessengerData data,
  }) = MessengerSlientState;
  const factory MessengerState.needPair({
    required MessengerData data,
  }) = MessengerNeedPairState;
  const factory MessengerState.loadFailure({
    required MessengerData data,
    required String error,
  }) = MessengerLoadFailureState;
}
