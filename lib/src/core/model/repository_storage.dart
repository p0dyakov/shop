import 'package:offline_messenger/src/core/database/drift/app_database.dart';
import 'package:offline_messenger/src/feature/server/database/server_dao.dart';
import 'package:offline_messenger/src/feature/server/repository/server_repository.dart';
import 'package:offline_messenger/src/feature/server/repository/server_repository_interface.dart';
import 'package:offline_messenger/src/feature/settings/database/settings_dao.dart';
import 'package:offline_messenger/src/feature/settings/repository/settings_repository.dart';
import 'package:offline_messenger/src/feature/settings/repository/settings_repository_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IRepositoryStorage {
  ISettingsRepository get settings;
  IServerRepository get server;
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

  @override
  IServerRepository get server => ServerRepository(
        serverDao: ServerDao(appDatabase: _appDatabase),
      );
}
