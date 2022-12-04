import 'package:photo_editor/src/feature/settings/enum/app_theme.dart';
import 'package:photo_editor/src/feature/settings/model/settings_data.dart';

abstract class ISettingsRepository {
  SettingsData currentData();

  Future<void> setTheme(AppTheme value);
}
