// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_auth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GoogleAuthResponse {

 bool? get success; String? get message; int? get code; GoogleAuthData? get data;
/// Create a copy of GoogleAuthResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoogleAuthResponseCopyWith<GoogleAuthResponse> get copyWith => _$GoogleAuthResponseCopyWithImpl<GoogleAuthResponse>(this as GoogleAuthResponse, _$identity);

  /// Serializes this GoogleAuthResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleAuthResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,code,data);

@override
String toString() {
  return 'GoogleAuthResponse(success: $success, message: $message, code: $code, data: $data)';
}


}

/// @nodoc
abstract mixin class $GoogleAuthResponseCopyWith<$Res>  {
  factory $GoogleAuthResponseCopyWith(GoogleAuthResponse value, $Res Function(GoogleAuthResponse) _then) = _$GoogleAuthResponseCopyWithImpl;
@useResult
$Res call({
 bool? success, String? message, int? code, GoogleAuthData? data
});


$GoogleAuthDataCopyWith<$Res>? get data;

}
/// @nodoc
class _$GoogleAuthResponseCopyWithImpl<$Res>
    implements $GoogleAuthResponseCopyWith<$Res> {
  _$GoogleAuthResponseCopyWithImpl(this._self, this._then);

  final GoogleAuthResponse _self;
  final $Res Function(GoogleAuthResponse) _then;

/// Create a copy of GoogleAuthResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? message = freezed,Object? code = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GoogleAuthData?,
  ));
}
/// Create a copy of GoogleAuthResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GoogleAuthDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $GoogleAuthDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [GoogleAuthResponse].
extension GoogleAuthResponsePatterns on GoogleAuthResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoogleAuthResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoogleAuthResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoogleAuthResponse value)  $default,){
final _that = this;
switch (_that) {
case _GoogleAuthResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoogleAuthResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GoogleAuthResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? success,  String? message,  int? code,  GoogleAuthData? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoogleAuthResponse() when $default != null:
return $default(_that.success,_that.message,_that.code,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? success,  String? message,  int? code,  GoogleAuthData? data)  $default,) {final _that = this;
switch (_that) {
case _GoogleAuthResponse():
return $default(_that.success,_that.message,_that.code,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? success,  String? message,  int? code,  GoogleAuthData? data)?  $default,) {final _that = this;
switch (_that) {
case _GoogleAuthResponse() when $default != null:
return $default(_that.success,_that.message,_that.code,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GoogleAuthResponse implements GoogleAuthResponse {
  const _GoogleAuthResponse({this.success, this.message, this.code, this.data});
  factory _GoogleAuthResponse.fromJson(Map<String, dynamic> json) => _$GoogleAuthResponseFromJson(json);

@override final  bool? success;
@override final  String? message;
@override final  int? code;
@override final  GoogleAuthData? data;

/// Create a copy of GoogleAuthResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoogleAuthResponseCopyWith<_GoogleAuthResponse> get copyWith => __$GoogleAuthResponseCopyWithImpl<_GoogleAuthResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GoogleAuthResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoogleAuthResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,code,data);

@override
String toString() {
  return 'GoogleAuthResponse(success: $success, message: $message, code: $code, data: $data)';
}


}

/// @nodoc
abstract mixin class _$GoogleAuthResponseCopyWith<$Res> implements $GoogleAuthResponseCopyWith<$Res> {
  factory _$GoogleAuthResponseCopyWith(_GoogleAuthResponse value, $Res Function(_GoogleAuthResponse) _then) = __$GoogleAuthResponseCopyWithImpl;
@override @useResult
$Res call({
 bool? success, String? message, int? code, GoogleAuthData? data
});


@override $GoogleAuthDataCopyWith<$Res>? get data;

}
/// @nodoc
class __$GoogleAuthResponseCopyWithImpl<$Res>
    implements _$GoogleAuthResponseCopyWith<$Res> {
  __$GoogleAuthResponseCopyWithImpl(this._self, this._then);

  final _GoogleAuthResponse _self;
  final $Res Function(_GoogleAuthResponse) _then;

/// Create a copy of GoogleAuthResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? message = freezed,Object? code = freezed,Object? data = freezed,}) {
  return _then(_GoogleAuthResponse(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GoogleAuthData?,
  ));
}

/// Create a copy of GoogleAuthResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GoogleAuthDataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $GoogleAuthDataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$GoogleAuthData {

// JWT langsung — jika profile sudah lengkap
 Token? get token; User? get user;// Complete-profile flow
@JsonKey(name: 'needs_completion') bool? get needsCompletion;@JsonKey(name: 'temp_token') String? get tempToken; String? get name; String? get email;
/// Create a copy of GoogleAuthData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoogleAuthDataCopyWith<GoogleAuthData> get copyWith => _$GoogleAuthDataCopyWithImpl<GoogleAuthData>(this as GoogleAuthData, _$identity);

  /// Serializes this GoogleAuthData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoogleAuthData&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user)&&(identical(other.needsCompletion, needsCompletion) || other.needsCompletion == needsCompletion)&&(identical(other.tempToken, tempToken) || other.tempToken == tempToken)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,user,needsCompletion,tempToken,name,email);

@override
String toString() {
  return 'GoogleAuthData(token: $token, user: $user, needsCompletion: $needsCompletion, tempToken: $tempToken, name: $name, email: $email)';
}


}

/// @nodoc
abstract mixin class $GoogleAuthDataCopyWith<$Res>  {
  factory $GoogleAuthDataCopyWith(GoogleAuthData value, $Res Function(GoogleAuthData) _then) = _$GoogleAuthDataCopyWithImpl;
@useResult
$Res call({
 Token? token, User? user,@JsonKey(name: 'needs_completion') bool? needsCompletion,@JsonKey(name: 'temp_token') String? tempToken, String? name, String? email
});


$TokenCopyWith<$Res>? get token;$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$GoogleAuthDataCopyWithImpl<$Res>
    implements $GoogleAuthDataCopyWith<$Res> {
  _$GoogleAuthDataCopyWithImpl(this._self, this._then);

  final GoogleAuthData _self;
  final $Res Function(GoogleAuthData) _then;

/// Create a copy of GoogleAuthData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = freezed,Object? user = freezed,Object? needsCompletion = freezed,Object? tempToken = freezed,Object? name = freezed,Object? email = freezed,}) {
  return _then(_self.copyWith(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as Token?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,needsCompletion: freezed == needsCompletion ? _self.needsCompletion : needsCompletion // ignore: cast_nullable_to_non_nullable
as bool?,tempToken: freezed == tempToken ? _self.tempToken : tempToken // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of GoogleAuthData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TokenCopyWith<$Res>? get token {
    if (_self.token == null) {
    return null;
  }

  return $TokenCopyWith<$Res>(_self.token!, (value) {
    return _then(_self.copyWith(token: value));
  });
}/// Create a copy of GoogleAuthData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [GoogleAuthData].
extension GoogleAuthDataPatterns on GoogleAuthData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GoogleAuthData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GoogleAuthData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GoogleAuthData value)  $default,){
final _that = this;
switch (_that) {
case _GoogleAuthData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GoogleAuthData value)?  $default,){
final _that = this;
switch (_that) {
case _GoogleAuthData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Token? token,  User? user, @JsonKey(name: 'needs_completion')  bool? needsCompletion, @JsonKey(name: 'temp_token')  String? tempToken,  String? name,  String? email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GoogleAuthData() when $default != null:
return $default(_that.token,_that.user,_that.needsCompletion,_that.tempToken,_that.name,_that.email);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Token? token,  User? user, @JsonKey(name: 'needs_completion')  bool? needsCompletion, @JsonKey(name: 'temp_token')  String? tempToken,  String? name,  String? email)  $default,) {final _that = this;
switch (_that) {
case _GoogleAuthData():
return $default(_that.token,_that.user,_that.needsCompletion,_that.tempToken,_that.name,_that.email);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Token? token,  User? user, @JsonKey(name: 'needs_completion')  bool? needsCompletion, @JsonKey(name: 'temp_token')  String? tempToken,  String? name,  String? email)?  $default,) {final _that = this;
switch (_that) {
case _GoogleAuthData() when $default != null:
return $default(_that.token,_that.user,_that.needsCompletion,_that.tempToken,_that.name,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GoogleAuthData implements GoogleAuthData {
  const _GoogleAuthData({this.token, this.user, @JsonKey(name: 'needs_completion') this.needsCompletion, @JsonKey(name: 'temp_token') this.tempToken, this.name, this.email});
  factory _GoogleAuthData.fromJson(Map<String, dynamic> json) => _$GoogleAuthDataFromJson(json);

// JWT langsung — jika profile sudah lengkap
@override final  Token? token;
@override final  User? user;
// Complete-profile flow
@override@JsonKey(name: 'needs_completion') final  bool? needsCompletion;
@override@JsonKey(name: 'temp_token') final  String? tempToken;
@override final  String? name;
@override final  String? email;

/// Create a copy of GoogleAuthData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GoogleAuthDataCopyWith<_GoogleAuthData> get copyWith => __$GoogleAuthDataCopyWithImpl<_GoogleAuthData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GoogleAuthDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GoogleAuthData&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user)&&(identical(other.needsCompletion, needsCompletion) || other.needsCompletion == needsCompletion)&&(identical(other.tempToken, tempToken) || other.tempToken == tempToken)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,user,needsCompletion,tempToken,name,email);

@override
String toString() {
  return 'GoogleAuthData(token: $token, user: $user, needsCompletion: $needsCompletion, tempToken: $tempToken, name: $name, email: $email)';
}


}

/// @nodoc
abstract mixin class _$GoogleAuthDataCopyWith<$Res> implements $GoogleAuthDataCopyWith<$Res> {
  factory _$GoogleAuthDataCopyWith(_GoogleAuthData value, $Res Function(_GoogleAuthData) _then) = __$GoogleAuthDataCopyWithImpl;
@override @useResult
$Res call({
 Token? token, User? user,@JsonKey(name: 'needs_completion') bool? needsCompletion,@JsonKey(name: 'temp_token') String? tempToken, String? name, String? email
});


@override $TokenCopyWith<$Res>? get token;@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$GoogleAuthDataCopyWithImpl<$Res>
    implements _$GoogleAuthDataCopyWith<$Res> {
  __$GoogleAuthDataCopyWithImpl(this._self, this._then);

  final _GoogleAuthData _self;
  final $Res Function(_GoogleAuthData) _then;

/// Create a copy of GoogleAuthData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = freezed,Object? user = freezed,Object? needsCompletion = freezed,Object? tempToken = freezed,Object? name = freezed,Object? email = freezed,}) {
  return _then(_GoogleAuthData(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as Token?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,needsCompletion: freezed == needsCompletion ? _self.needsCompletion : needsCompletion // ignore: cast_nullable_to_non_nullable
as bool?,tempToken: freezed == tempToken ? _self.tempToken : tempToken // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of GoogleAuthData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TokenCopyWith<$Res>? get token {
    if (_self.token == null) {
    return null;
  }

  return $TokenCopyWith<$Res>(_self.token!, (value) {
    return _then(_self.copyWith(token: value));
  });
}/// Create a copy of GoogleAuthData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
