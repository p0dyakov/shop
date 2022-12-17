import 'package:shop/src/feature/shop/model/shop.dart';

abstract class IShopDao {
  Future<List<Shop>?> get shops;
}
