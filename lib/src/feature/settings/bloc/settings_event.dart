part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.setTheme({
    required AppTheme theme,
  }) = SetThemeEvent;
}
