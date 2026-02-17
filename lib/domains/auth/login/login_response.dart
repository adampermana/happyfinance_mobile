import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
abstract class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    bool? success,
    String? message,
    int? code,
    Data? data,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    User? user,
    Token? token,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class Token with _$Token {
  const factory Token({
    String? accessToken,
    String? refreshToken,
    String? tokenType,
    int? expiresIn,
  }) = _Token;

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}

@freezed
abstract class User with _$User {
  const factory User({
    int? id,
    String? name,
    String? email,
    dynamic avatar,
    String? defaultMode,
    bool? isPremium,
    DateTime? lastLoginAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
