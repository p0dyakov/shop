import 'package:offline_messenger/src/feature/settings/enum/app_theme.dart';
import 'package:offline_messenger/src/feature/settings/model/settings_data.dart';

abstract class ISettingsRepository {
  SettingsData currentData();

  Future<void> setTheme(AppTheme value);
}
