// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginResponse {

 bool? get success; String? get message; int? get code; Data? get data;
/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResponseCopyWith<LoginResponse> get copyWith => _$LoginResponseCopyWithImpl<LoginResponse>(this as LoginResponse, _$identity);

  /// Serializes this LoginResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,code,data);

@override
String toString() {
  return 'LoginResponse(success: $success, message: $message, code: $code, data: $data)';
}


}

/// @nodoc
abstract mixin class $LoginResponseCopyWith<$Res>  {
  factory $LoginResponseCopyWith(LoginResponse value, $Res Function(LoginResponse) _then) = _$LoginResponseCopyWithImpl;
@useResult
$Res call({
 bool? success, String? message, int? code, Data? data
});


$DataCopyWith<$Res>? get data;

}
/// @nodoc
class _$LoginResponseCopyWithImpl<$Res>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._self, this._then);

  final LoginResponse _self;
  final $Res Function(LoginResponse) _then;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? message = freezed,Object? code = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}
/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginResponse].
extension LoginResponsePatterns on LoginResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginResponse value)  $default,){
final _that = this;
switch (_that) {
case _LoginResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? success,  String? message,  int? code,  Data? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? success,  String? message,  int? code,  Data? data)  $default,) {final _that = this;
switch (_that) {
case _LoginResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? success,  String? message,  int? code,  Data? data)?  $default,) {final _that = this;
switch (_that) {
case _LoginResponse() when $default != null:
return $default(_that.success,_that.message,_that.code,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginResponse implements LoginResponse {
  const _LoginResponse({this.success, this.message, this.code, this.data});
  factory _LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

@override final  bool? success;
@override final  String? message;
@override final  int? code;
@override final  Data? data;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginResponseCopyWith<_LoginResponse> get copyWith => __$LoginResponseCopyWithImpl<_LoginResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,code,data);

@override
String toString() {
  return 'LoginResponse(success: $success, message: $message, code: $code, data: $data)';
}


}

/// @nodoc
abstract mixin class _$LoginResponseCopyWith<$Res> implements $LoginResponseCopyWith<$Res> {
  factory _$LoginResponseCopyWith(_LoginResponse value, $Res Function(_LoginResponse) _then) = __$LoginResponseCopyWithImpl;
@override @useResult
$Res call({
 bool? success, String? message, int? code, Data? data
});


@override $DataCopyWith<$Res>? get data;

}
/// @nodoc
class __$LoginResponseCopyWithImpl<$Res>
    implements _$LoginResponseCopyWith<$Res> {
  __$LoginResponseCopyWithImpl(this._self, this._then);

  final _LoginResponse _self;
  final $Res Function(_LoginResponse) _then;

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? message = freezed,Object? code = freezed,Object? data = freezed,}) {
  return _then(_LoginResponse(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,
  ));
}

/// Create a copy of LoginResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$Data {

 User? get user; Token? get token;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&(identical(other.user, user) || other.user == user)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,token);

@override
String toString() {
  return 'Data(user: $user, token: $token)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
 User? user, Token? token
});


$UserCopyWith<$Res>? get user;$TokenCopyWith<$Res>? get token;

}
/// @nodoc
class _$DataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = freezed,Object? token = freezed,}) {
  return _then(_self.copyWith(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as Token?,
  ));
}
/// Create a copy of Data
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
}/// Create a copy of Data
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
}
}


/// Adds pattern-matching-related methods to [Data].
extension DataPatterns on Data {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Data value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Data() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Data value)  $default,){
final _that = this;
switch (_that) {
case _Data():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Data value)?  $default,){
final _that = this;
switch (_that) {
case _Data() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( User? user,  Token? token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.user,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( User? user,  Token? token)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.user,_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( User? user,  Token? token)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.user,_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
  const _Data({this.user, this.token});
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

@override final  User? user;
@override final  Token? token;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataCopyWith<_Data> get copyWith => __$DataCopyWithImpl<_Data>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&(identical(other.user, user) || other.user == user)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,token);

@override
String toString() {
  return 'Data(user: $user, token: $token)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
 User? user, Token? token
});


@override $UserCopyWith<$Res>? get user;@override $TokenCopyWith<$Res>? get token;

}
/// @nodoc
class __$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,Object? token = freezed,}) {
  return _then(_Data(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as Token?,
  ));
}

/// Create a copy of Data
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
}/// Create a copy of Data
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
}
}


/// @nodoc
mixin _$Token {

 String? get accessToken; String? get refreshToken; String? get tokenType; int? get expiresIn;
/// Create a copy of Token
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokenCopyWith<Token> get copyWith => _$TokenCopyWithImpl<Token>(this as Token, _$identity);

  /// Serializes this Token to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Token&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.tokenType, tokenType) || other.tokenType == tokenType)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,tokenType,expiresIn);

@override
String toString() {
  return 'Token(accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType, expiresIn: $expiresIn)';
}


}

/// @nodoc
abstract mixin class $TokenCopyWith<$Res>  {
  factory $TokenCopyWith(Token value, $Res Function(Token) _then) = _$TokenCopyWithImpl;
@useResult
$Res call({
 String? accessToken, String? refreshToken, String? tokenType, int? expiresIn
});




}
/// @nodoc
class _$TokenCopyWithImpl<$Res>
    implements $TokenCopyWith<$Res> {
  _$TokenCopyWithImpl(this._self, this._then);

  final Token _self;
  final $Res Function(Token) _then;

/// Create a copy of Token
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = freezed,Object? refreshToken = freezed,Object? tokenType = freezed,Object? expiresIn = freezed,}) {
  return _then(_self.copyWith(
accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,tokenType: freezed == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String?,expiresIn: freezed == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Token].
extension TokenPatterns on Token {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Token value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Token() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Token value)  $default,){
final _that = this;
switch (_that) {
case _Token():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Token value)?  $default,){
final _that = this;
switch (_that) {
case _Token() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? accessToken,  String? refreshToken,  String? tokenType,  int? expiresIn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Token() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.tokenType,_that.expiresIn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? accessToken,  String? refreshToken,  String? tokenType,  int? expiresIn)  $default,) {final _that = this;
switch (_that) {
case _Token():
return $default(_that.accessToken,_that.refreshToken,_that.tokenType,_that.expiresIn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? accessToken,  String? refreshToken,  String? tokenType,  int? expiresIn)?  $default,) {final _that = this;
switch (_that) {
case _Token() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.tokenType,_that.expiresIn);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Token implements Token {
  const _Token({this.accessToken, this.refreshToken, this.tokenType, this.expiresIn});
  factory _Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

@override final  String? accessToken;
@override final  String? refreshToken;
@override final  String? tokenType;
@override final  int? expiresIn;

/// Create a copy of Token
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokenCopyWith<_Token> get copyWith => __$TokenCopyWithImpl<_Token>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TokenToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Token&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.tokenType, tokenType) || other.tokenType == tokenType)&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,tokenType,expiresIn);

@override
String toString() {
  return 'Token(accessToken: $accessToken, refreshToken: $refreshToken, tokenType: $tokenType, expiresIn: $expiresIn)';
}


}

/// @nodoc
abstract mixin class _$TokenCopyWith<$Res> implements $TokenCopyWith<$Res> {
  factory _$TokenCopyWith(_Token value, $Res Function(_Token) _then) = __$TokenCopyWithImpl;
@override @useResult
$Res call({
 String? accessToken, String? refreshToken, String? tokenType, int? expiresIn
});




}
/// @nodoc
class __$TokenCopyWithImpl<$Res>
    implements _$TokenCopyWith<$Res> {
  __$TokenCopyWithImpl(this._self, this._then);

  final _Token _self;
  final $Res Function(_Token) _then;

/// Create a copy of Token
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = freezed,Object? refreshToken = freezed,Object? tokenType = freezed,Object? expiresIn = freezed,}) {
  return _then(_Token(
accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,tokenType: freezed == tokenType ? _self.tokenType : tokenType // ignore: cast_nullable_to_non_nullable
as String?,expiresIn: freezed == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$User {

 int? get id; String? get name; String? get email; dynamic get avatar; String? get defaultMode; bool? get isPremium; DateTime? get lastLoginAt;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&const DeepCollectionEquality().equals(other.avatar, avatar)&&(identical(other.defaultMode, defaultMode) || other.defaultMode == defaultMode)&&(identical(other.isPremium, isPremium) || other.isPremium == isPremium)&&(identical(other.lastLoginAt, lastLoginAt) || other.lastLoginAt == lastLoginAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,const DeepCollectionEquality().hash(avatar),defaultMode,isPremium,lastLoginAt);

@override
String toString() {
  return 'User(id: $id, name: $name, email: $email, avatar: $avatar, defaultMode: $defaultMode, isPremium: $isPremium, lastLoginAt: $lastLoginAt)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? email, dynamic avatar, String? defaultMode, bool? isPremium, DateTime? lastLoginAt
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? avatar = freezed,Object? defaultMode = freezed,Object? isPremium = freezed,Object? lastLoginAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as dynamic,defaultMode: freezed == defaultMode ? _self.defaultMode : defaultMode // ignore: cast_nullable_to_non_nullable
as String?,isPremium: freezed == isPremium ? _self.isPremium : isPremium // ignore: cast_nullable_to_non_nullable
as bool?,lastLoginAt: freezed == lastLoginAt ? _self.lastLoginAt : lastLoginAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? email,  dynamic avatar,  String? defaultMode,  bool? isPremium,  DateTime? lastLoginAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.avatar,_that.defaultMode,_that.isPremium,_that.lastLoginAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? email,  dynamic avatar,  String? defaultMode,  bool? isPremium,  DateTime? lastLoginAt)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.id,_that.name,_that.email,_that.avatar,_that.defaultMode,_that.isPremium,_that.lastLoginAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? email,  dynamic avatar,  String? defaultMode,  bool? isPremium,  DateTime? lastLoginAt)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.avatar,_that.defaultMode,_that.isPremium,_that.lastLoginAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
  const _User({this.id, this.name, this.email, this.avatar, this.defaultMode, this.isPremium, this.lastLoginAt});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? email;
@override final  dynamic avatar;
@override final  String? defaultMode;
@override final  bool? isPremium;
@override final  DateTime? lastLoginAt;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&const DeepCollectionEquality().equals(other.avatar, avatar)&&(identical(other.defaultMode, defaultMode) || other.defaultMode == defaultMode)&&(identical(other.isPremium, isPremium) || other.isPremium == isPremium)&&(identical(other.lastLoginAt, lastLoginAt) || other.lastLoginAt == lastLoginAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,const DeepCollectionEquality().hash(avatar),defaultMode,isPremium,lastLoginAt);

@override
String toString() {
  return 'User(id: $id, name: $name, email: $email, avatar: $avatar, defaultMode: $defaultMode, isPremium: $isPremium, lastLoginAt: $lastLoginAt)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? email, dynamic avatar, String? defaultMode, bool? isPremium, DateTime? lastLoginAt
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? avatar = freezed,Object? defaultMode = freezed,Object? isPremium = freezed,Object? lastLoginAt = freezed,}) {
  return _then(_User(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as dynamic,defaultMode: freezed == defaultMode ? _self.defaultMode : defaultMode // ignore: cast_nullable_to_non_nullable
as String?,isPremium: freezed == isPremium ? _self.isPremium : isPremium // ignore: cast_nullable_to_non_nullable
as bool?,lastLoginAt: freezed == lastLoginAt ? _self.lastLoginAt : lastLoginAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
