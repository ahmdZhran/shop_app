// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_item_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoriteItemModelAdapter extends TypeAdapter<FavoriteItemModel> {
  @override
  final int typeId = 0;

  @override
  FavoriteItemModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavoriteItemModel(
      id: fields[0] as int,
      name: fields[1] as String,
      image: fields[2] as String,
      price: fields[3] as String,
      description: fields[4] as String,
      images: (fields[5] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, FavoriteItemModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.images);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteItemModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
