import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:shop/src/feature/shop/model/product/product.dart';

part 'shop.freezed.dart';
part 'shop.g.dart';
part 'shop.hive.dart';

@freezed
class Shop with _$Shop {
  @HiveType(typeId: 0)
  factory Shop({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(2) required String description,
    @HiveField(3) required Duration deliveryTime,
    @HiveField(4) required int deliveryPrice,
    @HiveField(5) required String photoUrl,
    @HiveField(6) required List<Product> products,
  }) = _Shop;

  factory Shop.fromJson(Map<String, Object?> json) => _$ShopFromJson(json);
}
