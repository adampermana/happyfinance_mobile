import 'package:hive_ce_flutter/adapters.dart';

part 'auth_data_hive.g.dart';

@HiveType(typeId: 0)
class AuthDataHive {
  AuthDataHive({
    this.accessToken,
    this.refreshToken,
    this.tokenType,
    this.expiresIn,
  });
  factory AuthDataHive.fromMap(Map<String, dynamic> json) => AuthDataHive(
    accessToken: json['access_token'] as String?,
    refreshToken: json['refresh_token'] as String?,
    tokenType: json['token_type'] as String?,
    expiresIn: json['expires_in'] as int?,
  );
  @HiveField(1)
  String? accessToken;
  @HiveField(2)
  String? refreshToken;
  @HiveField(3)
  String? tokenType;
  @HiveField(4)
  int? expiresIn;

  AuthDataHive copyWith({
    String? accessToken,
    String? refreshToken,
    String? tokenType,
    int? expiresIn,
  }) => AuthDataHive(
    accessToken: accessToken ?? this.accessToken,
    refreshToken: refreshToken ?? this.refreshToken,
    tokenType: tokenType ?? this.tokenType,
    expiresIn: expiresIn ?? this.expiresIn,
  );

  Map<String, dynamic> toMap() => {
    'access_token': accessToken,
    'refresh_token': refreshToken,
    'token_type': tokenType,
    'expires_in': expiresIn,
  };
}
