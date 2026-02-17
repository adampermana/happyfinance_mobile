// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_data_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AuthDataHiveAdapter extends TypeAdapter<AuthDataHive> {
  @override
  final typeId = 0;

  @override
  AuthDataHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuthDataHive(
      accessToken: fields[1] as String?,
      refreshToken: fields[2] as String?,
      tokenType: fields[3] as String?,
      expiresIn: (fields[4] as num?)?.toInt(),
    );
  }

  @override
  void write(BinaryWriter writer, AuthDataHive obj) {
    writer
      ..writeByte(4)
      ..writeByte(1)
      ..write(obj.accessToken)
      ..writeByte(2)
      ..write(obj.refreshToken)
      ..writeByte(3)
      ..write(obj.tokenType)
      ..writeByte(4)
      ..write(obj.expiresIn);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthDataHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
