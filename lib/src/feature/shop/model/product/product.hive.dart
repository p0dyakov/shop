// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductImplAdapter extends TypeAdapter<_$ProductImpl> {
  @override
  final int typeId = 1;

  @override
  _$ProductImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ProductImpl(
      id: fields[0] as String,
      name: fields[1] as String,
      photoUrl: fields[3] as String,
      characteristic: fields[4] as ProductCharacteristic,
    );
  }

  @override
  void write(BinaryWriter writer, _$ProductImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.photoUrl)
      ..writeByte(4)
      ..write(obj.characteristic);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductImplAdapter && runtimeType == other.runtimeType && typeId == other.typeId;
}
