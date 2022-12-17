import 'package:hive_flutter/adapters.dart';
import 'package:shop/src/core/database/hive/app_database_keys.dart';
import 'package:shop/src/feature/shop/model/product.dart';
import 'package:shop/src/feature/shop/model/product_characteristics.dart';
import 'package:shop/src/feature/shop/model/shop.dart';

Future<void> registerAdapters() async {
  Hive
    ..registerAdapter(ShopAdapter())
    ..registerAdapter(ProductAdapter())
    ..registerAdapter(ProductCharacteristicAdapter());
}

class AppDatabase {
  AppDatabase();

  final Map<String, int> _boxCounter = <String, int>{};

  Future<Box<List<Shop>>?> openShopsBox() async =>
      _openBox<List<Shop>>(name: AppDatabaseKeys.shops, typeId: 0);

  Future get({
    required Box box,
    required String boxKey,
  }) async =>
      box.get(boxKey);

  Future<void> put({
    required Box box,
    required String boxKey,
    required Object model,
  }) async {
    await box.put(boxKey, model);
  }

  Future<void> close() async {
    await Hive.close();
  }

  Future<Box<T>?> _openBox<T>({
    required String name,
    required int typeId,
  }) async {
    if (Hive.isBoxOpen(name)) {
      var count = _boxCounter[name] ?? 1;
      count += 1;
      _boxCounter[name] = count;

      return Hive.box(name);
    }

    _boxCounter[name] = 1;

    return Hive.openBox<T>(name);
  }
}
