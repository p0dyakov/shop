import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_characteristic.freezed.dart';

@freezed
class ProductCharacteristic with _$ProductCharacteristic {
  factory ProductCharacteristic() = _ProductCharacteristic;
}
