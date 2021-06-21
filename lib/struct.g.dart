// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'struct.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class statusAdapter extends TypeAdapter<status> {
  @override
  final int typeId = 0;

  @override
  status read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return status.toWatch;
      case 1:
        return status.watching;
      case 2:
        return status.watched;
      default:
        return status.toWatch;
    }
  }

  @override
  void write(BinaryWriter writer, status obj) {
    switch (obj) {
      case status.toWatch:
        writer.writeByte(0);
        break;
      case status.watching:
        writer.writeByte(1);
        break;
      case status.watched:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is statusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AnimeAdapter extends TypeAdapter<Movie> {
  @override
  final int typeId = 1;

  @override
  Movie read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Movie(
      fields[0] as status,
    );
  }

  @override
  void write(BinaryWriter writer, Movie obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnimeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
