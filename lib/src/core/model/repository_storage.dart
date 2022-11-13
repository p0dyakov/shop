import 'package:offline_messenger/src/feature/settings/database/settings_dao.dart';
import 'package:offline_messenger/src/feature/settings/repository/settings_repository.dart';
import 'package:offline_messenger/src/feature/settings/repository/settings_repository_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IRepositoryStorage {
  ISettingsRepository get settings;
}

class RepositoryStorage implements IRepositoryStorage {
  final SharedPreferences _sharedPreferences;

  RepositoryStorage({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  @override
  ISettingsRepository get settings => SettingsRepository(
        settingsDao: SettingsDao(sharedPreferences: _sharedPreferences),
      );
}
