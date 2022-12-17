import 'package:shop/src/feature/settings/enum/app_theme.dart';
import 'package:shop/src/feature/settings/model/settings_data.dart';

abstract class ISettingsRepository {
  SettingsData currentData();

  Future<void> setTheme(AppTheme value);
}
