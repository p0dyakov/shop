part of 'server_bloc.dart';

@freezed
class ServerState with _$ServerState {
  const factory ServerState.loading() = ServerLoadingState;
  const factory ServerState.loadSuccess({
    required String? serverName,
    required String? serverAddress,
  }) = ServerLoadSuccessState;
  const factory ServerState.loadFailure({
    required String error,
  }) = ServerLoadFailureState;
}
