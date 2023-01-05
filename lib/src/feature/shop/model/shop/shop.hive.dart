// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ShopAdapter extends TypeAdapter<_$_Shop> {
  @override
  final int typeId = 0;

  @override
  _$_Shop read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return _$_Shop(
      id: fields[0] as String,
      name: fields[1] as String,
      description: fields[2] as String,
      deliveryTimeInMinutes: fields[3] as int,
      deliveryPrice: fields[4] as int,
      photoUrl: fields[5] as String,
      products: (fields[6] as List).cast<Product>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_Shop obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.deliveryTimeInMinutes)
      ..writeByte(4)
      ..write(obj.deliveryPrice)
      ..writeByte(5)
      ..write(obj.photoUrl)
      ..writeByte(6)
      ..write(obj.products);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ShopAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
