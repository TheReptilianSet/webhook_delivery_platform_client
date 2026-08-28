// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'persisted_session_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PersistedSessionDto {

 String get accessToken; String get refreshToken; DateTime get accessExpiresAt; DateTime get refreshExpiresAt;
/// Create a copy of PersistedSessionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersistedSessionDtoCopyWith<PersistedSessionDto> get copyWith => _$PersistedSessionDtoCopyWithImpl<PersistedSessionDto>(this as PersistedSessionDto, _$identity);

  /// Serializes this PersistedSessionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersistedSessionDto&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.accessExpiresAt, accessExpiresAt) || other.accessExpiresAt == accessExpiresAt)&&(identical(other.refreshExpiresAt, refreshExpiresAt) || other.refreshExpiresAt == refreshExpiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,accessExpiresAt,refreshExpiresAt);

@override
String toString() {
  return 'PersistedSessionDto(accessToken: $accessToken, refreshToken: $refreshToken, accessExpiresAt: $accessExpiresAt, refreshExpiresAt: $refreshExpiresAt)';
}


}

/// @nodoc
abstract mixin class $PersistedSessionDtoCopyWith<$Res>  {
  factory $PersistedSessionDtoCopyWith(PersistedSessionDto value, $Res Function(PersistedSessionDto) _then) = _$PersistedSessionDtoCopyWithImpl;
@useResult
$Res call({
 String accessToken, String refreshToken, DateTime accessExpiresAt, DateTime refreshExpiresAt
});




}
/// @nodoc
class _$PersistedSessionDtoCopyWithImpl<$Res>
    implements $PersistedSessionDtoCopyWith<$Res> {
  _$PersistedSessionDtoCopyWithImpl(this._self, this._then);

  final PersistedSessionDto _self;
  final $Res Function(PersistedSessionDto) _then;

/// Create a copy of PersistedSessionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? refreshToken = null,Object? accessExpiresAt = null,Object? refreshExpiresAt = null,}) {
  return _then(PersistedSessionDto(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,accessExpiresAt: null == accessExpiresAt ? _self.accessExpiresAt : accessExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,refreshExpiresAt: null == refreshExpiresAt ? _self.refreshExpiresAt : refreshExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [PersistedSessionDto].
extension PersistedSessionDtoPatterns on PersistedSessionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PersistedSessionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PersistedSessionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PersistedSessionDto value)  $default,){
final _that = this;
switch (_that) {
case _PersistedSessionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PersistedSessionDto value)?  $default,){
final _that = this;
switch (_that) {
case _PersistedSessionDto() when $default != null:
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
case _PersistedSessionDto() when $default != null:
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
case _PersistedSessionDto():
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
case _PersistedSessionDto() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.accessExpiresAt,_that.refreshExpiresAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PersistedSessionDto implements PersistedSessionDto {
  const _PersistedSessionDto({required this.accessToken, required this.refreshToken, required this.accessExpiresAt, required this.refreshExpiresAt});
  factory _PersistedSessionDto.fromJson(Map<String, dynamic> json) => _$PersistedSessionDtoFromJson(json);

@override final  String accessToken;
@override final  String refreshToken;
@override final  DateTime accessExpiresAt;
@override final  DateTime refreshExpiresAt;

/// Create a copy of PersistedSessionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersistedSessionDtoCopyWith<_PersistedSessionDto> get copyWith => __$PersistedSessionDtoCopyWithImpl<_PersistedSessionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PersistedSessionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersistedSessionDto&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.accessExpiresAt, accessExpiresAt) || other.accessExpiresAt == accessExpiresAt)&&(identical(other.refreshExpiresAt, refreshExpiresAt) || other.refreshExpiresAt == refreshExpiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,accessExpiresAt,refreshExpiresAt);

@override
String toString() {
  return 'PersistedSessionDto(accessToken: $accessToken, refreshToken: $refreshToken, accessExpiresAt: $accessExpiresAt, refreshExpiresAt: $refreshExpiresAt)';
}


}

/// @nodoc
abstract mixin class _$PersistedSessionDtoCopyWith<$Res> implements $PersistedSessionDtoCopyWith<$Res> {
  factory _$PersistedSessionDtoCopyWith(_PersistedSessionDto value, $Res Function(_PersistedSessionDto) _then) = __$PersistedSessionDtoCopyWithImpl;
@override @useResult
$Res call({
 String accessToken, String refreshToken, DateTime accessExpiresAt, DateTime refreshExpiresAt
});




}
/// @nodoc
class __$PersistedSessionDtoCopyWithImpl<$Res>
    implements _$PersistedSessionDtoCopyWith<$Res> {
  __$PersistedSessionDtoCopyWithImpl(this._self, this._then);

  final _PersistedSessionDto _self;
  final $Res Function(_PersistedSessionDto) _then;

/// Create a copy of PersistedSessionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? refreshToken = null,Object? accessExpiresAt = null,Object? refreshExpiresAt = null,}) {
  return _then(_PersistedSessionDto(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,accessExpiresAt: null == accessExpiresAt ? _self.accessExpiresAt : accessExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,refreshExpiresAt: null == refreshExpiresAt ? _self.refreshExpiresAt : refreshExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
