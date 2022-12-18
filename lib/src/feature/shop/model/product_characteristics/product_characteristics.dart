import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'product_characteristics.freezed.dart';
part 'product_characteristics.g.dart';
part 'product_characteristics.hive.dart';

@freezed
class ProductCharacteristic with _$ProductCharacteristic {
  @HiveType(typeId: 2)
  factory ProductCharacteristic({
    @HiveField(0) required int weight,
    @HiveField(1) required int price,
    @HiveField(2) required String manufactureCountry,
    @HiveField(3) required int expirationDateInDays,
  }) = _ProductCharacteristic;

  factory ProductCharacteristic.fromJson(Map<String, Object?> json) =>
      _$ProductCharacteristicFromJson(json);
}
