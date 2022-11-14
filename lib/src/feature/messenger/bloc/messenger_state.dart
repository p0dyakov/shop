part of 'messenger_bloc.dart';

@freezed
class MessengerState with _$MessengerState {
  const factory MessengerState.needPair({
    required MessengerData data,
  }) = MessengerNeedPairState;
  const factory MessengerState.loading({
    required MessengerData data,
  }) = MessengerLoadingState;
  const factory MessengerState.loadSuccess({
    required MessengerData data,
    required List<Message> messages,
  }) = MessengerLoadSuccessState;
  const factory MessengerState.loadFailure({
    required MessengerData data,
    required String error,
  }) = MessengerLoadFailureState;
}
