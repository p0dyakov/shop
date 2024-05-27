import 'dart:convert';

import 'package:shop/src/feature/shop/database/shop_dao_interface.dart';
import 'package:shop/src/feature/shop/model/shop/shop.dart';
import 'package:shop/src/feature/shop/repository/mock_response.dart';
import 'package:shop/src/feature/shop/repository/shop_repository_interface.dart';

class ShopRepository implements IShopRepository {
  final IShopDao _shopDao;

  ShopRepository({required IShopDao shopDao}) : _shopDao = shopDao;

  @override
  Future<List<Shop>> get shops async {
    final response = json.decode(mockResponse) as Map<String, dynamic>;
    final results = response['results'] as List;
    await Future<void>.delayed(const Duration(milliseconds: 600)); // request simulation

    final shops = <Shop>[];
    for (final item in results) {
      final shop = Shop.fromJson(item as Map<String, dynamic>);
      shops.add(shop);
    }

    await _shopDao.updateShops(shops);

    return shops;
  }

  @override
  Future<List<Shop>?> get storedShops => _shopDao.shops;
}
