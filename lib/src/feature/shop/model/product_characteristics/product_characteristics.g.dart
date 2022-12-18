// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_characteristics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductCharacteristic _$$_ProductCharacteristicFromJson(
        Map<String, dynamic> json) =>
    _$_ProductCharacteristic(
      weight: json['weight'] as int,
      price: json['price'] as int,
      manufactureCountry: json['manufactureCountry'] as String,
      expirationDateInDays: json['expirationDateInDays'] as int,
    );

Map<String, dynamic> _$$_ProductCharacteristicToJson(
        _$_ProductCharacteristic instance) =>
    <String, dynamic>{
      'weight': instance.weight,
      'price': instance.price,
      'manufactureCountry': instance.manufactureCountry,
      'expirationDateInDays': instance.expirationDateInDays,
    };
