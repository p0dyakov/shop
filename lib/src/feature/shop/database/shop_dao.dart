import 'package:shop/src/core/database/hive/app_database.dart';
import 'package:shop/src/core/database/hive/app_database_keys.dart';
import 'package:shop/src/feature/shop/database/shop_dao_interface.dart';
import 'package:shop/src/feature/shop/model/shop/shop.dart';

class ShopDao implements IShopDao {
  late final AppDatabase _appDatabase;

  ShopDao({
    required AppDatabase appDatabase,
  }) : _appDatabase = appDatabase;

  @override
  Future<List<Shop>?> get shops async {
    final box = await _appDatabase.openShopsBox();

    return box.get(AppDatabaseKeys.shops)?.cast<Shop>();
  }

  @override
  Future<void> updateShops(List<Shop> shops) async {
    final box = await _appDatabase.openShopsBox();
    await box.put(AppDatabaseKeys.shops, shops);
  }
}
