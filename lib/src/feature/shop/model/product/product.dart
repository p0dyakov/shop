// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shop/src/feature/shop/model/product_characteristics/product_characteristics.dart';

@GenerateNiceMocks([MockSpec<Product>()])
import 'product.mocks.dart';

part 'product.freezed.dart';
part 'product.g.dart';
part 'product.hive.dart';

@freezed
class Product with _$Product {
  @HiveType(typeId: 1)
  factory Product({
    @HiveField(0) required String id,
    @HiveField(1) required String name,
    @HiveField(3) required String photoUrl,
    @HiveField(4) required ProductCharacteristic characteristic,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}
