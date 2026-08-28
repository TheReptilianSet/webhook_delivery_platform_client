// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SessionCredentials {

 String get accessToken; String get refreshToken; DateTime get accessExpiresAt; DateTime get refreshExpiresAt;
/// Create a copy of SessionCredentials
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionCredentialsCopyWith<SessionCredentials> get copyWith => _$SessionCredentialsCopyWithImpl<SessionCredentials>(this as SessionCredentials, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionCredentials&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.accessExpiresAt, accessExpiresAt) || other.accessExpiresAt == accessExpiresAt)&&(identical(other.refreshExpiresAt, refreshExpiresAt) || other.refreshExpiresAt == refreshExpiresAt));
}


@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,accessExpiresAt,refreshExpiresAt);

@override
String toString() {
  return 'SessionCredentials(accessToken: $accessToken, refreshToken: $refreshToken, accessExpiresAt: $accessExpiresAt, refreshExpiresAt: $refreshExpiresAt)';
}


}

/// @nodoc
abstract mixin class $SessionCredentialsCopyWith<$Res>  {
  factory $SessionCredentialsCopyWith(SessionCredentials value, $Res Function(SessionCredentials) _then) = _$SessionCredentialsCopyWithImpl;
@useResult
$Res call({
 String accessToken, String refreshToken, DateTime accessExpiresAt, DateTime refreshExpiresAt
});




}
/// @nodoc
class _$SessionCredentialsCopyWithImpl<$Res>
    implements $SessionCredentialsCopyWith<$Res> {
  _$SessionCredentialsCopyWithImpl(this._self, this._then);

  final SessionCredentials _self;
  final $Res Function(SessionCredentials) _then;

/// Create a copy of SessionCredentials
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? refreshToken = null,Object? accessExpiresAt = null,Object? refreshExpiresAt = null,}) {
  return _then(SessionCredentials(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,accessExpiresAt: null == accessExpiresAt ? _self.accessExpiresAt : accessExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,refreshExpiresAt: null == refreshExpiresAt ? _self.refreshExpiresAt : refreshExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [SessionCredentials].
extension SessionCredentialsPatterns on SessionCredentials {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionCredentials value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionCredentials() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionCredentials value)  $default,){
final _that = this;
switch (_that) {
case _SessionCredentials():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionCredentials value)?  $default,){
final _that = this;
switch (_that) {
case _SessionCredentials() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String accessToken,  String refreshToken,  DateTime accessExpiresAt,  DateTime refreshExpiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionCredentials() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.accessExpiresAt,_that.refreshExpiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String accessToken,  String refreshToken,  DateTime accessExpiresAt,  DateTime refreshExpiresAt)  $default,) {final _that = this;
switch (_that) {
case _SessionCredentials():
return $default(_that.accessToken,_that.refreshToken,_that.accessExpiresAt,_that.refreshExpiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String accessToken,  String refreshToken,  DateTime accessExpiresAt,  DateTime refreshExpiresAt)?  $default,) {final _that = this;
switch (_that) {
case _SessionCredentials() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.accessExpiresAt,_that.refreshExpiresAt);case _:
  return null;

}
}

}

/// @nodoc


class _SessionCredentials implements SessionCredentials {
  const _SessionCredentials({required this.accessToken, required this.refreshToken, required this.accessExpiresAt, required this.refreshExpiresAt});
  

@override final  String accessToken;
@override final  String refreshToken;
@override final  DateTime accessExpiresAt;
@override final  DateTime refreshExpiresAt;

/// Create a copy of SessionCredentials
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionCredentialsCopyWith<_SessionCredentials> get copyWith => __$SessionCredentialsCopyWithImpl<_SessionCredentials>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionCredentials&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.accessExpiresAt, accessExpiresAt) || other.accessExpiresAt == accessExpiresAt)&&(identical(other.refreshExpiresAt, refreshExpiresAt) || other.refreshExpiresAt == refreshExpiresAt));
}


@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,accessExpiresAt,refreshExpiresAt);

@override
String toString() {
  return 'SessionCredentials(accessToken: $accessToken, refreshToken: $refreshToken, accessExpiresAt: $accessExpiresAt, refreshExpiresAt: $refreshExpiresAt)';
}


}

/// @nodoc
abstract mixin class _$SessionCredentialsCopyWith<$Res> implements $SessionCredentialsCopyWith<$Res> {
  factory _$SessionCredentialsCopyWith(_SessionCredentials value, $Res Function(_SessionCredentials) _then) = __$SessionCredentialsCopyWithImpl;
@override @useResult
$Res call({
 String accessToken, String refreshToken, DateTime accessExpiresAt, DateTime refreshExpiresAt
});




}
/// @nodoc
class __$SessionCredentialsCopyWithImpl<$Res>
    implements _$SessionCredentialsCopyWith<$Res> {
  __$SessionCredentialsCopyWithImpl(this._self, this._then);

  final _SessionCredentials _self;
  final $Res Function(_SessionCredentials) _then;

/// Create a copy of SessionCredentials
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? refreshToken = null,Object? accessExpiresAt = null,Object? refreshExpiresAt = null,}) {
  return _then(_SessionCredentials(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,accessExpiresAt: null == accessExpiresAt ? _self.accessExpiresAt : accessExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,refreshExpiresAt: null == refreshExpiresAt ? _self.refreshExpiresAt : refreshExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
