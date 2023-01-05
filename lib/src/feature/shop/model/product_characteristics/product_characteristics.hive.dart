// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_characteristics.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductCharacteristicAdapter
    extends TypeAdapter<_$_ProductCharacteristic> {
  @override
  final int typeId = 2;

  @override
  _$_ProductCharacteristic read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return _$_ProductCharacteristic(
      weight: fields[0] as int,
      price: fields[1] as int,
      manufactureCountry: fields[2] as String,
      expirationDateInDays: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ProductCharacteristic obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.weight)
      ..writeByte(1)
      ..write(obj.price)
      ..writeByte(2)
      ..write(obj.manufactureCountry)
      ..writeByte(3)
      ..write(obj.expirationDateInDays);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductCharacteristicAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
