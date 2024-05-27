// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopImpl _$$ShopImplFromJson(Map<String, dynamic> json) => _$ShopImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      deliveryTimeInMinutes: (json['deliveryTimeInMinutes'] as num).toInt(),
      deliveryPrice: (json['deliveryPrice'] as num).toInt(),
      photoUrl: json['photoUrl'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ShopImplToJson(_$ShopImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'deliveryTimeInMinutes': instance.deliveryTimeInMinutes,
      'deliveryPrice': instance.deliveryPrice,
      'photoUrl': instance.photoUrl,
      'products': instance.products,
    };
