// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GoogleAuthResponse _$GoogleAuthResponseFromJson(Map<String, dynamic> json) =>
    _GoogleAuthResponse(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : GoogleAuthData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GoogleAuthResponseToJson(_GoogleAuthResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

_GoogleAuthData _$GoogleAuthDataFromJson(Map<String, dynamic> json) =>
    _GoogleAuthData(
      token: json['token'] == null
          ? null
          : Token.fromJson(json['token'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      needsCompletion: json['needs_completion'] as bool?,
      tempToken: json['temp_token'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$GoogleAuthDataToJson(_GoogleAuthData instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
      'needs_completion': instance.needsCompletion,
      'temp_token': instance.tempToken,
      'name': instance.name,
      'email': instance.email,
    };
