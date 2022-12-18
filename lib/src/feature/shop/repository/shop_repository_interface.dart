import 'package:shop/src/feature/shop/model/shop/shop.dart';

abstract class IShopRepository {
  Future<List<Shop>?> get storedShops;
  Future<List<Shop>> get shops;
}
