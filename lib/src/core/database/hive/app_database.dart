import 'package:hive_flutter/adapters.dart';
import 'package:shop/src/core/database/hive/app_database_keys.dart';
import 'package:shop/src/feature/shop/model/product/product.dart';
import 'package:shop/src/feature/shop/model/product_characteristics/product_characteristics.dart';
import 'package:shop/src/feature/shop/model/shop/shop.dart';

class AppDatabase {
  AppDatabase();

  final Map<String, int> _boxCounter = <String, int>{};

  Future<Box<List<dynamic>>> openShopsBox() async => _openBox(name: AppDatabaseKeys.shops, typeId: 0);

  Future<void> init() async {
    await Hive.initFlutter();
    Hive
      ..registerAdapter(ShopImplAdapter())
      ..registerAdapter(ProductImplAdapter())
      ..registerAdapter(ProductCharacteristicImplAdapter());
  }

  Future<void> close() async {
    await Hive.close();
  }

  Future<Box<T>> _openBox<T>({
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
