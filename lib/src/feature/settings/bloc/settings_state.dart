part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial({
    required SettingsData data,
  }) = SettingsInitialState;
  const factory SettingsState.loading({
    required SettingsData data,
  }) = SettingsLoadingState;
  const factory SettingsState.loadSuccess({
    required SettingsData data,
  }) = SettingsLoadSuccessState;
  const factory SettingsState.loadFailure({
    required SettingsData data,
    required String error,
  }) = SettingsLoadFailureState;
}
