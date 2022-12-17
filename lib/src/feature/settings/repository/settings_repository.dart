import 'package:pure/pure.dart';
import 'package:shop/src/feature/settings/database/settings_dao_interface.dart';
import 'package:shop/src/feature/settings/enum/app_theme.dart';
import 'package:shop/src/feature/settings/model/settings_data.dart';
import 'package:shop/src/feature/settings/repository/settings_repository_interface.dart';

class SettingsRepository implements ISettingsRepository {
  final ISettingsDao _settingsDao;

  SettingsRepository({
    required ISettingsDao settingsDao,
  }) : _settingsDao = settingsDao;

  AppTheme? get _theme =>
      AppTheme.values.byName.nullable(_settingsDao.themeMode.value);

  @override
  SettingsData currentData() => SettingsData(
        theme: _theme ?? AppTheme.system,
      );

  @override
  Future<void> setTheme(AppTheme value) =>
      _settingsDao.themeMode.setValue(value.name);
}
