// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_characteristics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductCharacteristicImpl _$$ProductCharacteristicImplFromJson(Map<String, dynamic> json) =>
    _$ProductCharacteristicImpl(
      weight: (json['weight'] as num).toInt(),
      price: (json['price'] as num).toInt(),
      manufactureCountry: json['manufactureCountry'] as String,
      expirationDateInDays: (json['expirationDateInDays'] as num).toInt(),
    );

Map<String, dynamic> _$$ProductCharacteristicImplToJson(_$ProductCharacteristicImpl instance) => <String, dynamic>{
      'weight': instance.weight,
      'price': instance.price,
      'manufactureCountry': instance.manufactureCountry,
      'expirationDateInDays': instance.expirationDateInDays,
    };
