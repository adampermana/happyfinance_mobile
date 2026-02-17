// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    _LoginResponse(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(_LoginResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
  token: json['token'] == null
      ? null
      : Token.fromJson(json['token'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'user': instance.user,
  'token': instance.token,
};

_Token _$TokenFromJson(Map<String, dynamic> json) => _Token(
  accessToken: json['accessToken'] as String?,
  refreshToken: json['refreshToken'] as String?,
  tokenType: json['tokenType'] as String?,
  expiresIn: (json['expiresIn'] as num?)?.toInt(),
);

Map<String, dynamic> _$TokenToJson(_Token instance) => <String, dynamic>{
  'accessToken': instance.accessToken,
  'refreshToken': instance.refreshToken,
  'tokenType': instance.tokenType,
  'expiresIn': instance.expiresIn,
};

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  email: json['email'] as String?,
  avatar: json['avatar'],
  defaultMode: json['defaultMode'] as String?,
  isPremium: json['isPremium'] as bool?,
  lastLoginAt: json['lastLoginAt'] == null
      ? null
      : DateTime.parse(json['lastLoginAt'] as String),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'avatar': instance.avatar,
  'defaultMode': instance.defaultMode,
  'isPremium': instance.isPremium,
  'lastLoginAt': instance.lastLoginAt?.toIso8601String(),
};
