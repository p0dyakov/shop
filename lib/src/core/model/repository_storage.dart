import 'package:shared_preferences/shared_preferences.dart';
import 'package:transmitter/src/feature/settings/database/settings_dao.dart';
import 'package:transmitter/src/feature/settings/repository/settings_repository.dart';

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
