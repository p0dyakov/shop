import 'package:shop/src/feature/shop/model/shop/shop.dart';

abstract class IShopDao {
  Future<List<Shop>?> get shops;
  Future<void> updateShops(List<Shop> shops);
}
