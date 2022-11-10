part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.setTheme({
    required AppTheme theme,
  }) = SetThemeEvent;
  const factory SettingsEvent.openBluetoothSettings() =
      OpenBluetoothSettingsEvent;
  const factory SettingsEvent.changeDeviceName({
    required String newName,
  }) = ChangeDeviceNameEvent;
}
