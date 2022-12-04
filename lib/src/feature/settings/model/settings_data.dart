import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photo_editor/src/feature/settings/enum/app_theme.dart';

part 'settings_data.freezed.dart';

@freezed
class SettingsData with _$SettingsData {
  factory SettingsData({
    required AppTheme theme,
  }) = _SettingsData;
}
