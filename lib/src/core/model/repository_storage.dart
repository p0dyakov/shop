import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop/src/core/database/hive/app_database.dart';
import 'package:shop/src/feature/settings/database/settings_dao.dart';
import 'package:shop/src/feature/settings/repository/settings_repository.dart';
import 'package:shop/src/feature/settings/repository/settings_repository_interface.dart';
import 'package:shop/src/feature/shop/database/shop_dao.dart';
import 'package:shop/src/feature/shop/repository/shop_repository.dart';
import 'package:shop/src/feature/shop/repository/shop_repository_interface.dart';

abstract class IRepositoryStorage {
  ISettingsRepository get settings;
  IShopRepository get shop;
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
  IShopRepository get shop => ShopRepository(
        shopDao: ShopDao(appDatabase: _appDatabase),
      );
}
