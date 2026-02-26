// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompleteProfileResponse _$CompleteProfileResponseFromJson(
  Map<String, dynamic> json,
) => _CompleteProfileResponse(
  success: json['success'] as bool?,
  message: json['message'] as String?,
  code: (json['code'] as num?)?.toInt(),
  data: json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CompleteProfileResponseToJson(
  _CompleteProfileResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'code': instance.code,
  'data': instance.data,
};
