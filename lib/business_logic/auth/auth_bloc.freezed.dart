// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Postlogin value)?  postlogin,TResult Function( _PostRegister value)?  postRegister,TResult Function( _PostForgotPassword value)?  postForgotPassword,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Postlogin() when postlogin != null:
return postlogin(_that);case _PostRegister() when postRegister != null:
return postRegister(_that);case _PostForgotPassword() when postForgotPassword != null:
return postForgotPassword(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Postlogin value)  postlogin,required TResult Function( _PostRegister value)  postRegister,required TResult Function( _PostForgotPassword value)  postForgotPassword,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Postlogin():
return postlogin(_that);case _PostRegister():
return postRegister(_that);case _PostForgotPassword():
return postForgotPassword(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Postlogin value)?  postlogin,TResult? Function( _PostRegister value)?  postRegister,TResult? Function( _PostForgotPassword value)?  postForgotPassword,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Postlogin() when postlogin != null:
return postlogin(_that);case _PostRegister() when postRegister != null:
return postRegister(_that);case _PostForgotPassword() when postForgotPassword != null:
return postForgotPassword(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String usernameOrEmail,  String password,  double latitude,  double longitude,  String fcmToken)?  postlogin,TResult Function( String username,  String email,  String phone,  String password,  String latitude,  String longitude,  String fcmToken,  String isRule,  String country)?  postRegister,TResult Function( String email)?  postForgotPassword,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Postlogin() when postlogin != null:
return postlogin(_that.usernameOrEmail,_that.password,_that.latitude,_that.longitude,_that.fcmToken);case _PostRegister() when postRegister != null:
return postRegister(_that.username,_that.email,_that.phone,_that.password,_that.latitude,_that.longitude,_that.fcmToken,_that.isRule,_that.country);case _PostForgotPassword() when postForgotPassword != null:
return postForgotPassword(_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String usernameOrEmail,  String password,  double latitude,  double longitude,  String fcmToken)  postlogin,required TResult Function( String username,  String email,  String phone,  String password,  String latitude,  String longitude,  String fcmToken,  String isRule,  String country)  postRegister,required TResult Function( String email)  postForgotPassword,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Postlogin():
return postlogin(_that.usernameOrEmail,_that.password,_that.latitude,_that.longitude,_that.fcmToken);case _PostRegister():
return postRegister(_that.username,_that.email,_that.phone,_that.password,_that.latitude,_that.longitude,_that.fcmToken,_that.isRule,_that.country);case _PostForgotPassword():
return postForgotPassword(_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String usernameOrEmail,  String password,  double latitude,  double longitude,  String fcmToken)?  postlogin,TResult? Function( String username,  String email,  String phone,  String password,  String latitude,  String longitude,  String fcmToken,  String isRule,  String country)?  postRegister,TResult? Function( String email)?  postForgotPassword,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Postlogin() when postlogin != null:
return postlogin(_that.usernameOrEmail,_that.password,_that.latitude,_that.longitude,_that.fcmToken);case _PostRegister() when postRegister != null:
return postRegister(_that.username,_that.email,_that.phone,_that.password,_that.latitude,_that.longitude,_that.fcmToken,_that.isRule,_that.country);case _PostForgotPassword() when postForgotPassword != null:
return postForgotPassword(_that.email);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements AuthEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.started()';
}


}




/// @nodoc


class _Postlogin implements AuthEvent {
  const _Postlogin({required this.usernameOrEmail, required this.password, required this.latitude, required this.longitude, required this.fcmToken});
  

 final  String usernameOrEmail;
 final  String password;
 final  double latitude;
 final  double longitude;
 final  String fcmToken;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostloginCopyWith<_Postlogin> get copyWith => __$PostloginCopyWithImpl<_Postlogin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Postlogin&&(identical(other.usernameOrEmail, usernameOrEmail) || other.usernameOrEmail == usernameOrEmail)&&(identical(other.password, password) || other.password == password)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken));
}


@override
int get hashCode => Object.hash(runtimeType,usernameOrEmail,password,latitude,longitude,fcmToken);

@override
String toString() {
  return 'AuthEvent.postlogin(usernameOrEmail: $usernameOrEmail, password: $password, latitude: $latitude, longitude: $longitude, fcmToken: $fcmToken)';
}


}

/// @nodoc
abstract mixin class _$PostloginCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$PostloginCopyWith(_Postlogin value, $Res Function(_Postlogin) _then) = __$PostloginCopyWithImpl;
@useResult
$Res call({
 String usernameOrEmail, String password, double latitude, double longitude, String fcmToken
});




}
/// @nodoc
class __$PostloginCopyWithImpl<$Res>
    implements _$PostloginCopyWith<$Res> {
  __$PostloginCopyWithImpl(this._self, this._then);

  final _Postlogin _self;
  final $Res Function(_Postlogin) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? usernameOrEmail = null,Object? password = null,Object? latitude = null,Object? longitude = null,Object? fcmToken = null,}) {
  return _then(_Postlogin(
usernameOrEmail: null == usernameOrEmail ? _self.usernameOrEmail : usernameOrEmail // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,fcmToken: null == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PostRegister implements AuthEvent {
  const _PostRegister({required this.username, required this.email, required this.phone, required this.password, required this.latitude, required this.longitude, required this.fcmToken, required this.isRule, required this.country});
  

 final  String username;
 final  String email;
 final  String phone;
 final  String password;
 final  String latitude;
 final  String longitude;
 final  String fcmToken;
 final  String isRule;
 final  String country;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostRegisterCopyWith<_PostRegister> get copyWith => __$PostRegisterCopyWithImpl<_PostRegister>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostRegister&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.password, password) || other.password == password)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.fcmToken, fcmToken) || other.fcmToken == fcmToken)&&(identical(other.isRule, isRule) || other.isRule == isRule)&&(identical(other.country, country) || other.country == country));
}


@override
int get hashCode => Object.hash(runtimeType,username,email,phone,password,latitude,longitude,fcmToken,isRule,country);

@override
String toString() {
  return 'AuthEvent.postRegister(username: $username, email: $email, phone: $phone, password: $password, latitude: $latitude, longitude: $longitude, fcmToken: $fcmToken, isRule: $isRule, country: $country)';
}


}

/// @nodoc
abstract mixin class _$PostRegisterCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$PostRegisterCopyWith(_PostRegister value, $Res Function(_PostRegister) _then) = __$PostRegisterCopyWithImpl;
@useResult
$Res call({
 String username, String email, String phone, String password, String latitude, String longitude, String fcmToken, String isRule, String country
});




}
/// @nodoc
class __$PostRegisterCopyWithImpl<$Res>
    implements _$PostRegisterCopyWith<$Res> {
  __$PostRegisterCopyWithImpl(this._self, this._then);

  final _PostRegister _self;
  final $Res Function(_PostRegister) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? username = null,Object? email = null,Object? phone = null,Object? password = null,Object? latitude = null,Object? longitude = null,Object? fcmToken = null,Object? isRule = null,Object? country = null,}) {
  return _then(_PostRegister(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as String,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as String,fcmToken: null == fcmToken ? _self.fcmToken : fcmToken // ignore: cast_nullable_to_non_nullable
as String,isRule: null == isRule ? _self.isRule : isRule // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PostForgotPassword implements AuthEvent {
  const _PostForgotPassword({required this.email});
  

 final  String email;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostForgotPasswordCopyWith<_PostForgotPassword> get copyWith => __$PostForgotPasswordCopyWithImpl<_PostForgotPassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostForgotPassword&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'AuthEvent.postForgotPassword(email: $email)';
}


}

/// @nodoc
abstract mixin class _$PostForgotPasswordCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$PostForgotPasswordCopyWith(_PostForgotPassword value, $Res Function(_PostForgotPassword) _then) = __$PostForgotPasswordCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class __$PostForgotPasswordCopyWithImpl<$Res>
    implements _$PostForgotPasswordCopyWith<$Res> {
  __$PostForgotPasswordCopyWithImpl(this._self, this._then);

  final _PostForgotPassword _self;
  final $Res Function(_PostForgotPassword) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(_PostForgotPassword(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AuthState {

 String get email; String get password; String? get message; String? get messageTitle; int? get statusCode; bool get loading; bool get successLogin; bool get successRegister; bool get isValid; LoginResponse? get loginResponse;// required RegisterResponse? registerResponse,
 Alert? get alert;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.message, message) || other.message == message)&&(identical(other.messageTitle, messageTitle) || other.messageTitle == messageTitle)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.successLogin, successLogin) || other.successLogin == successLogin)&&(identical(other.successRegister, successRegister) || other.successRegister == successRegister)&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.loginResponse, loginResponse) || other.loginResponse == loginResponse)&&(identical(other.alert, alert) || other.alert == alert));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,message,messageTitle,statusCode,loading,successLogin,successRegister,isValid,loginResponse,alert);

@override
String toString() {
  return 'AuthState(email: $email, password: $password, message: $message, messageTitle: $messageTitle, statusCode: $statusCode, loading: $loading, successLogin: $successLogin, successRegister: $successRegister, isValid: $isValid, loginResponse: $loginResponse, alert: $alert)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 String email, String password, String? message, String? messageTitle, int? statusCode, bool loading, bool successLogin, bool successRegister, bool isValid, LoginResponse? loginResponse, Alert? alert
});


$LoginResponseCopyWith<$Res>? get loginResponse;

}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? message = freezed,Object? messageTitle = freezed,Object? statusCode = freezed,Object? loading = null,Object? successLogin = null,Object? successRegister = null,Object? isValid = null,Object? loginResponse = freezed,Object? alert = freezed,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,messageTitle: freezed == messageTitle ? _self.messageTitle : messageTitle // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,successLogin: null == successLogin ? _self.successLogin : successLogin // ignore: cast_nullable_to_non_nullable
as bool,successRegister: null == successRegister ? _self.successRegister : successRegister // ignore: cast_nullable_to_non_nullable
as bool,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,loginResponse: freezed == loginResponse ? _self.loginResponse : loginResponse // ignore: cast_nullable_to_non_nullable
as LoginResponse?,alert: freezed == alert ? _self.alert : alert // ignore: cast_nullable_to_non_nullable
as Alert?,
  ));
}
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginResponseCopyWith<$Res>? get loginResponse {
    if (_self.loginResponse == null) {
    return null;
  }

  return $LoginResponseCopyWith<$Res>(_self.loginResponse!, (value) {
    return _then(_self.copyWith(loginResponse: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Initial value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Initial value)  $default,){
final _that = this;
switch (_that) {
case _Initial():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Initial value)?  $default,){
final _that = this;
switch (_that) {
case _Initial() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String password,  String? message,  String? messageTitle,  int? statusCode,  bool loading,  bool successLogin,  bool successRegister,  bool isValid,  LoginResponse? loginResponse,  Alert? alert)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when $default != null:
return $default(_that.email,_that.password,_that.message,_that.messageTitle,_that.statusCode,_that.loading,_that.successLogin,_that.successRegister,_that.isValid,_that.loginResponse,_that.alert);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String password,  String? message,  String? messageTitle,  int? statusCode,  bool loading,  bool successLogin,  bool successRegister,  bool isValid,  LoginResponse? loginResponse,  Alert? alert)  $default,) {final _that = this;
switch (_that) {
case _Initial():
return $default(_that.email,_that.password,_that.message,_that.messageTitle,_that.statusCode,_that.loading,_that.successLogin,_that.successRegister,_that.isValid,_that.loginResponse,_that.alert);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String password,  String? message,  String? messageTitle,  int? statusCode,  bool loading,  bool successLogin,  bool successRegister,  bool isValid,  LoginResponse? loginResponse,  Alert? alert)?  $default,) {final _that = this;
switch (_that) {
case _Initial() when $default != null:
return $default(_that.email,_that.password,_that.message,_that.messageTitle,_that.statusCode,_that.loading,_that.successLogin,_that.successRegister,_that.isValid,_that.loginResponse,_that.alert);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AuthState {
  const _Initial({required this.email, required this.password, required this.message, required this.messageTitle, required this.statusCode, required this.loading, required this.successLogin, required this.successRegister, required this.isValid, required this.loginResponse, required this.alert});
  

@override final  String email;
@override final  String password;
@override final  String? message;
@override final  String? messageTitle;
@override final  int? statusCode;
@override final  bool loading;
@override final  bool successLogin;
@override final  bool successRegister;
@override final  bool isValid;
@override final  LoginResponse? loginResponse;
// required RegisterResponse? registerResponse,
@override final  Alert? alert;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.message, message) || other.message == message)&&(identical(other.messageTitle, messageTitle) || other.messageTitle == messageTitle)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.successLogin, successLogin) || other.successLogin == successLogin)&&(identical(other.successRegister, successRegister) || other.successRegister == successRegister)&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.loginResponse, loginResponse) || other.loginResponse == loginResponse)&&(identical(other.alert, alert) || other.alert == alert));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,message,messageTitle,statusCode,loading,successLogin,successRegister,isValid,loginResponse,alert);

@override
String toString() {
  return 'AuthState(email: $email, password: $password, message: $message, messageTitle: $messageTitle, statusCode: $statusCode, loading: $loading, successLogin: $successLogin, successRegister: $successRegister, isValid: $isValid, loginResponse: $loginResponse, alert: $alert)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 String email, String password, String? message, String? messageTitle, int? statusCode, bool loading, bool successLogin, bool successRegister, bool isValid, LoginResponse? loginResponse, Alert? alert
});


@override $LoginResponseCopyWith<$Res>? get loginResponse;

}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? message = freezed,Object? messageTitle = freezed,Object? statusCode = freezed,Object? loading = null,Object? successLogin = null,Object? successRegister = null,Object? isValid = null,Object? loginResponse = freezed,Object? alert = freezed,}) {
  return _then(_Initial(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,messageTitle: freezed == messageTitle ? _self.messageTitle : messageTitle // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,successLogin: null == successLogin ? _self.successLogin : successLogin // ignore: cast_nullable_to_non_nullable
as bool,successRegister: null == successRegister ? _self.successRegister : successRegister // ignore: cast_nullable_to_non_nullable
as bool,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,loginResponse: freezed == loginResponse ? _self.loginResponse : loginResponse // ignore: cast_nullable_to_non_nullable
as LoginResponse?,alert: freezed == alert ? _self.alert : alert // ignore: cast_nullable_to_non_nullable
as Alert?,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginResponseCopyWith<$Res>? get loginResponse {
    if (_self.loginResponse == null) {
    return null;
  }

  return $LoginResponseCopyWith<$Res>(_self.loginResponse!, (value) {
    return _then(_self.copyWith(loginResponse: value));
  });
}
}

// dart format on
