import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/src/feature/shop/model/shop/shop.dart';

part 'shop_data.freezed.dart';

@freezed
class ShopData with _$ShopData {
  factory ShopData({
    required List<Shop> shops,
  }) = _ShopData;

  factory ShopData.initial() => ShopData(shops: []);
}
