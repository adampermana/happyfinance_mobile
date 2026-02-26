// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_connection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NetworkConnectionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkConnectionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkConnectionEvent()';
}


}

/// @nodoc
class $NetworkConnectionEventCopyWith<$Res>  {
$NetworkConnectionEventCopyWith(NetworkConnectionEvent _, $Res Function(NetworkConnectionEvent) __);
}


/// Adds pattern-matching-related methods to [NetworkConnectionEvent].
extension NetworkConnectionEventPatterns on NetworkConnectionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CheckConnection value)?  checkConnection,TResult Function( _ConnectionChanged value)?  connectionChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckConnection() when checkConnection != null:
return checkConnection(_that);case _ConnectionChanged() when connectionChanged != null:
return connectionChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CheckConnection value)  checkConnection,required TResult Function( _ConnectionChanged value)  connectionChanged,}){
final _that = this;
switch (_that) {
case _CheckConnection():
return checkConnection(_that);case _ConnectionChanged():
return connectionChanged(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CheckConnection value)?  checkConnection,TResult? Function( _ConnectionChanged value)?  connectionChanged,}){
final _that = this;
switch (_that) {
case _CheckConnection() when checkConnection != null:
return checkConnection(_that);case _ConnectionChanged() when connectionChanged != null:
return connectionChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  checkConnection,TResult Function( bool hasInternetConnection,  String? message)?  connectionChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckConnection() when checkConnection != null:
return checkConnection();case _ConnectionChanged() when connectionChanged != null:
return connectionChanged(_that.hasInternetConnection,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  checkConnection,required TResult Function( bool hasInternetConnection,  String? message)  connectionChanged,}) {final _that = this;
switch (_that) {
case _CheckConnection():
return checkConnection();case _ConnectionChanged():
return connectionChanged(_that.hasInternetConnection,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  checkConnection,TResult? Function( bool hasInternetConnection,  String? message)?  connectionChanged,}) {final _that = this;
switch (_that) {
case _CheckConnection() when checkConnection != null:
return checkConnection();case _ConnectionChanged() when connectionChanged != null:
return connectionChanged(_that.hasInternetConnection,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _CheckConnection implements NetworkConnectionEvent {
  const _CheckConnection();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckConnection);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkConnectionEvent.checkConnection()';
}


}




/// @nodoc


class _ConnectionChanged implements NetworkConnectionEvent {
  const _ConnectionChanged({required this.hasInternetConnection, this.message});
  

 final  bool hasInternetConnection;
 final  String? message;

/// Create a copy of NetworkConnectionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectionChangedCopyWith<_ConnectionChanged> get copyWith => __$ConnectionChangedCopyWithImpl<_ConnectionChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectionChanged&&(identical(other.hasInternetConnection, hasInternetConnection) || other.hasInternetConnection == hasInternetConnection)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,hasInternetConnection,message);

@override
String toString() {
  return 'NetworkConnectionEvent.connectionChanged(hasInternetConnection: $hasInternetConnection, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ConnectionChangedCopyWith<$Res> implements $NetworkConnectionEventCopyWith<$Res> {
  factory _$ConnectionChangedCopyWith(_ConnectionChanged value, $Res Function(_ConnectionChanged) _then) = __$ConnectionChangedCopyWithImpl;
@useResult
$Res call({
 bool hasInternetConnection, String? message
});




}
/// @nodoc
class __$ConnectionChangedCopyWithImpl<$Res>
    implements _$ConnectionChangedCopyWith<$Res> {
  __$ConnectionChangedCopyWithImpl(this._self, this._then);

  final _ConnectionChanged _self;
  final $Res Function(_ConnectionChanged) _then;

/// Create a copy of NetworkConnectionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? hasInternetConnection = null,Object? message = freezed,}) {
  return _then(_ConnectionChanged(
hasInternetConnection: null == hasInternetConnection ? _self.hasInternetConnection : hasInternetConnection // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$NetworkConnectionState {

 bool get hasInternetConnection; String? get message;
/// Create a copy of NetworkConnectionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkConnectionStateCopyWith<NetworkConnectionState> get copyWith => _$NetworkConnectionStateCopyWithImpl<NetworkConnectionState>(this as NetworkConnectionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkConnectionState&&(identical(other.hasInternetConnection, hasInternetConnection) || other.hasInternetConnection == hasInternetConnection)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,hasInternetConnection,message);

@override
String toString() {
  return 'NetworkConnectionState(hasInternetConnection: $hasInternetConnection, message: $message)';
}


}

/// @nodoc
abstract mixin class $NetworkConnectionStateCopyWith<$Res>  {
  factory $NetworkConnectionStateCopyWith(NetworkConnectionState value, $Res Function(NetworkConnectionState) _then) = _$NetworkConnectionStateCopyWithImpl;
@useResult
$Res call({
 bool hasInternetConnection, String? message
});




}
/// @nodoc
class _$NetworkConnectionStateCopyWithImpl<$Res>
    implements $NetworkConnectionStateCopyWith<$Res> {
  _$NetworkConnectionStateCopyWithImpl(this._self, this._then);

  final NetworkConnectionState _self;
  final $Res Function(NetworkConnectionState) _then;

/// Create a copy of NetworkConnectionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hasInternetConnection = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
hasInternetConnection: null == hasInternetConnection ? _self.hasInternetConnection : hasInternetConnection // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NetworkConnectionState].
extension NetworkConnectionStatePatterns on NetworkConnectionState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool hasInternetConnection,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when $default != null:
return $default(_that.hasInternetConnection,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool hasInternetConnection,  String? message)  $default,) {final _that = this;
switch (_that) {
case _Initial():
return $default(_that.hasInternetConnection,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool hasInternetConnection,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _Initial() when $default != null:
return $default(_that.hasInternetConnection,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements NetworkConnectionState {
  const _Initial({required this.hasInternetConnection, required this.message});
  

@override final  bool hasInternetConnection;
@override final  String? message;

/// Create a copy of NetworkConnectionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.hasInternetConnection, hasInternetConnection) || other.hasInternetConnection == hasInternetConnection)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,hasInternetConnection,message);

@override
String toString() {
  return 'NetworkConnectionState(hasInternetConnection: $hasInternetConnection, message: $message)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $NetworkConnectionStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 bool hasInternetConnection, String? message
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of NetworkConnectionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hasInternetConnection = null,Object? message = freezed,}) {
  return _then(_Initial(
hasInternetConnection: null == hasInternetConnection ? _self.hasInternetConnection : hasInternetConnection // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
