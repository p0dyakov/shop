import 'package:photo_editor/src/core/database/drift/app_database.dart';
import 'package:photo_editor/src/feature/settings/database/settings_dao.dart';
import 'package:photo_editor/src/feature/settings/repository/settings_repository.dart';
import 'package:photo_editor/src/feature/settings/repository/settings_repository_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IRepositoryStorage {
  ISettingsRepository get settings;
}

class RepositoryStorage implements IRepositoryStorage {
  final AppDatabase _appDatabase;
  final SharedPreferences _sharedPreferences;

  RepositoryStorage({
    required AppDatabase appDatabase,
    required SharedPreferences sharedPreferences,
  })  : _appDatabase = appDatabase,
        _sharedPreferences = sharedPreferences;

  @override
  ISettingsRepository get settings => SettingsRepository(
        settingsDao: SettingsDao(sharedPreferences: _sharedPreferences),
      );
}
