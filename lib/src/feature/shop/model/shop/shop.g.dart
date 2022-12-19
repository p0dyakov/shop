// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Shop _$$_ShopFromJson(Map<String, dynamic> json) => _$_Shop(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      deliveryTimeInMinutes: json['deliveryTimeInMinutes'] as int,
      deliveryPrice: json['deliveryPrice'] as int,
      photoUrl: json['photoUrl'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ShopToJson(_$_Shop instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'deliveryTimeInMinutes': instance.deliveryTimeInMinutes,
      'deliveryPrice': instance.deliveryPrice,
      'photoUrl': instance.photoUrl,
      'products': instance.products,
    };
