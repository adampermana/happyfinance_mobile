import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:happyfinance_mobile/domains/auth/login/login_response.dart';

part 'google_auth_response.freezed.dart';
part 'google_auth_response.g.dart';

@freezed
abstract class GoogleAuthResponse with _$GoogleAuthResponse {
  const factory GoogleAuthResponse({
    bool? success,
    String? message,
    int? code,
    GoogleAuthData? data,
  }) = _GoogleAuthResponse;

  factory GoogleAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$GoogleAuthResponseFromJson(json);
}

@freezed
abstract class GoogleAuthData with _$GoogleAuthData {
  const factory GoogleAuthData({
    // JWT langsung — jika profile sudah lengkap
    Token? token,
    User? user,
    // Complete-profile flow
    @JsonKey(name: 'needs_completion') bool? needsCompletion,
    @JsonKey(name: 'temp_token') String? tempToken,
    String? name,
    String? email,
  }) = _GoogleAuthData;

  factory GoogleAuthData.fromJson(Map<String, dynamic> json) =>
      _$GoogleAuthDataFromJson(json);
}
