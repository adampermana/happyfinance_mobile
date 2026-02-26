import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:happyfinance_mobile/domains/auth/login/login_response.dart';

part 'complete_profile_response.freezed.dart';
part 'complete_profile_response.g.dart';

@freezed
abstract class CompleteProfileResponse with _$CompleteProfileResponse {
  const factory CompleteProfileResponse({
    bool? success,
    String? message,
    int? code,
    Data? data,
  }) = _CompleteProfileResponse;

  factory CompleteProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$CompleteProfileResponseFromJson(json);
}
