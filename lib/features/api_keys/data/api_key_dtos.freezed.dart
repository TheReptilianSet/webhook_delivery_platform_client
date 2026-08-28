// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_key_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiKeyDto {

 String get id; String get name; String get prefix; List<String> get scopes; DateTime? get revokedAt; DateTime get createdAt;
/// Create a copy of ApiKeyDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiKeyDtoCopyWith<ApiKeyDto> get copyWith => _$ApiKeyDtoCopyWithImpl<ApiKeyDto>(this as ApiKeyDto, _$identity);

  /// Serializes this ApiKeyDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiKeyDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.prefix, prefix) || other.prefix == prefix)&&const DeepCollectionEquality().equals(other.scopes, scopes)&&(identical(other.revokedAt, revokedAt) || other.revokedAt == revokedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,prefix,const DeepCollectionEquality().hash(scopes),revokedAt,createdAt);

@override
String toString() {
  return 'ApiKeyDto(id: $id, name: $name, prefix: $prefix, scopes: $scopes, revokedAt: $revokedAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ApiKeyDtoCopyWith<$Res>  {
  factory $ApiKeyDtoCopyWith(ApiKeyDto value, $Res Function(ApiKeyDto) _then) = _$ApiKeyDtoCopyWithImpl;
@useResult
$Res call({
 String id, String name, String prefix, List<String> scopes, DateTime? revokedAt, DateTime createdAt
});




}
/// @nodoc
class _$ApiKeyDtoCopyWithImpl<$Res>
    implements $ApiKeyDtoCopyWith<$Res> {
  _$ApiKeyDtoCopyWithImpl(this._self, this._then);

  final ApiKeyDto _self;
  final $Res Function(ApiKeyDto) _then;

/// Create a copy of ApiKeyDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? prefix = null,Object? scopes = null,Object? revokedAt = freezed,Object? createdAt = null,}) {
  return _then(ApiKeyDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,prefix: null == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as String,scopes: null == scopes ? _self.scopes : scopes // ignore: cast_nullable_to_non_nullable
as List<String>,revokedAt: freezed == revokedAt ? _self.revokedAt : revokedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiKeyDto].
extension ApiKeyDtoPatterns on ApiKeyDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiKeyDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiKeyDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiKeyDto value)  $default,){
final _that = this;
switch (_that) {
case _ApiKeyDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiKeyDto value)?  $default,){
final _that = this;
switch (_that) {
case _ApiKeyDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String prefix,  List<String> scopes,  DateTime? revokedAt,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiKeyDto() when $default != null:
return $default(_that.id,_that.name,_that.prefix,_that.scopes,_that.revokedAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String prefix,  List<String> scopes,  DateTime? revokedAt,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _ApiKeyDto():
return $default(_that.id,_that.name,_that.prefix,_that.scopes,_that.revokedAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String prefix,  List<String> scopes,  DateTime? revokedAt,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ApiKeyDto() when $default != null:
return $default(_that.id,_that.name,_that.prefix,_that.scopes,_that.revokedAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApiKeyDto implements ApiKeyDto {
  const _ApiKeyDto({required this.id, required this.name, required this.prefix, required  List<String> scopes, this.revokedAt, required this.createdAt}): _scopes = scopes;
  factory _ApiKeyDto.fromJson(Map<String, dynamic> json) => _$ApiKeyDtoFromJson(json);

@override final  String id;
@override final  String name;
@override final  String prefix;
 final  List<String> _scopes;
@override List<String> get scopes {
  if (_scopes is EqualUnmodifiableListView) return _scopes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scopes);
}

@override final  DateTime? revokedAt;
@override final  DateTime createdAt;

/// Create a copy of ApiKeyDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiKeyDtoCopyWith<_ApiKeyDto> get copyWith => __$ApiKeyDtoCopyWithImpl<_ApiKeyDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiKeyDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiKeyDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.prefix, prefix) || other.prefix == prefix)&&const DeepCollectionEquality().equals(other._scopes, _scopes)&&(identical(other.revokedAt, revokedAt) || other.revokedAt == revokedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,prefix,const DeepCollectionEquality().hash(_scopes),revokedAt,createdAt);

@override
String toString() {
  return 'ApiKeyDto(id: $id, name: $name, prefix: $prefix, scopes: $scopes, revokedAt: $revokedAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ApiKeyDtoCopyWith<$Res> implements $ApiKeyDtoCopyWith<$Res> {
  factory _$ApiKeyDtoCopyWith(_ApiKeyDto value, $Res Function(_ApiKeyDto) _then) = __$ApiKeyDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String prefix, List<String> scopes, DateTime? revokedAt, DateTime createdAt
});




}
/// @nodoc
class __$ApiKeyDtoCopyWithImpl<$Res>
    implements _$ApiKeyDtoCopyWith<$Res> {
  __$ApiKeyDtoCopyWithImpl(this._self, this._then);

  final _ApiKeyDto _self;
  final $Res Function(_ApiKeyDto) _then;

/// Create a copy of ApiKeyDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? prefix = null,Object? scopes = null,Object? revokedAt = freezed,Object? createdAt = null,}) {
  return _then(_ApiKeyDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,prefix: null == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as String,scopes: null == scopes ? _self._scopes : scopes // ignore: cast_nullable_to_non_nullable
as List<String>,revokedAt: freezed == revokedAt ? _self.revokedAt : revokedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$ApiKeyCreatedDto {

 String get id; String get name; String get prefix; List<String> get scopes; DateTime? get revokedAt; DateTime get createdAt; String get key;
/// Create a copy of ApiKeyCreatedDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiKeyCreatedDtoCopyWith<ApiKeyCreatedDto> get copyWith => _$ApiKeyCreatedDtoCopyWithImpl<ApiKeyCreatedDto>(this as ApiKeyCreatedDto, _$identity);

  /// Serializes this ApiKeyCreatedDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiKeyCreatedDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.prefix, prefix) || other.prefix == prefix)&&const DeepCollectionEquality().equals(other.scopes, scopes)&&(identical(other.revokedAt, revokedAt) || other.revokedAt == revokedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.key, key) || other.key == key));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,prefix,const DeepCollectionEquality().hash(scopes),revokedAt,createdAt,key);

@override
String toString() {
  return 'ApiKeyCreatedDto(id: $id, name: $name, prefix: $prefix, scopes: $scopes, revokedAt: $revokedAt, createdAt: $createdAt, key: $key)';
}


}

/// @nodoc
abstract mixin class $ApiKeyCreatedDtoCopyWith<$Res>  {
  factory $ApiKeyCreatedDtoCopyWith(ApiKeyCreatedDto value, $Res Function(ApiKeyCreatedDto) _then) = _$ApiKeyCreatedDtoCopyWithImpl;
@useResult
$Res call({
 String id, String name, String prefix, List<String> scopes, DateTime? revokedAt, DateTime createdAt, String key
});




}
/// @nodoc
class _$ApiKeyCreatedDtoCopyWithImpl<$Res>
    implements $ApiKeyCreatedDtoCopyWith<$Res> {
  _$ApiKeyCreatedDtoCopyWithImpl(this._self, this._then);

  final ApiKeyCreatedDto _self;
  final $Res Function(ApiKeyCreatedDto) _then;

/// Create a copy of ApiKeyCreatedDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? prefix = null,Object? scopes = null,Object? revokedAt = freezed,Object? createdAt = null,Object? key = null,}) {
  return _then(ApiKeyCreatedDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,prefix: null == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as String,scopes: null == scopes ? _self.scopes : scopes // ignore: cast_nullable_to_non_nullable
as List<String>,revokedAt: freezed == revokedAt ? _self.revokedAt : revokedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiKeyCreatedDto].
extension ApiKeyCreatedDtoPatterns on ApiKeyCreatedDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiKeyCreatedDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiKeyCreatedDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiKeyCreatedDto value)  $default,){
final _that = this;
switch (_that) {
case _ApiKeyCreatedDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiKeyCreatedDto value)?  $default,){
final _that = this;
switch (_that) {
case _ApiKeyCreatedDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String prefix,  List<String> scopes,  DateTime? revokedAt,  DateTime createdAt,  String key)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiKeyCreatedDto() when $default != null:
return $default(_that.id,_that.name,_that.prefix,_that.scopes,_that.revokedAt,_that.createdAt,_that.key);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String prefix,  List<String> scopes,  DateTime? revokedAt,  DateTime createdAt,  String key)  $default,) {final _that = this;
switch (_that) {
case _ApiKeyCreatedDto():
return $default(_that.id,_that.name,_that.prefix,_that.scopes,_that.revokedAt,_that.createdAt,_that.key);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String prefix,  List<String> scopes,  DateTime? revokedAt,  DateTime createdAt,  String key)?  $default,) {final _that = this;
switch (_that) {
case _ApiKeyCreatedDto() when $default != null:
return $default(_that.id,_that.name,_that.prefix,_that.scopes,_that.revokedAt,_that.createdAt,_that.key);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApiKeyCreatedDto implements ApiKeyCreatedDto {
  const _ApiKeyCreatedDto({required this.id, required this.name, required this.prefix, required  List<String> scopes, this.revokedAt, required this.createdAt, required this.key}): _scopes = scopes;
  factory _ApiKeyCreatedDto.fromJson(Map<String, dynamic> json) => _$ApiKeyCreatedDtoFromJson(json);

@override final  String id;
@override final  String name;
@override final  String prefix;
 final  List<String> _scopes;
@override List<String> get scopes {
  if (_scopes is EqualUnmodifiableListView) return _scopes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scopes);
}

@override final  DateTime? revokedAt;
@override final  DateTime createdAt;
@override final  String key;

/// Create a copy of ApiKeyCreatedDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiKeyCreatedDtoCopyWith<_ApiKeyCreatedDto> get copyWith => __$ApiKeyCreatedDtoCopyWithImpl<_ApiKeyCreatedDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiKeyCreatedDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiKeyCreatedDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.prefix, prefix) || other.prefix == prefix)&&const DeepCollectionEquality().equals(other._scopes, _scopes)&&(identical(other.revokedAt, revokedAt) || other.revokedAt == revokedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.key, key) || other.key == key));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,prefix,const DeepCollectionEquality().hash(_scopes),revokedAt,createdAt,key);

@override
String toString() {
  return 'ApiKeyCreatedDto(id: $id, name: $name, prefix: $prefix, scopes: $scopes, revokedAt: $revokedAt, createdAt: $createdAt, key: $key)';
}


}

/// @nodoc
abstract mixin class _$ApiKeyCreatedDtoCopyWith<$Res> implements $ApiKeyCreatedDtoCopyWith<$Res> {
  factory _$ApiKeyCreatedDtoCopyWith(_ApiKeyCreatedDto value, $Res Function(_ApiKeyCreatedDto) _then) = __$ApiKeyCreatedDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String prefix, List<String> scopes, DateTime? revokedAt, DateTime createdAt, String key
});




}
/// @nodoc
class __$ApiKeyCreatedDtoCopyWithImpl<$Res>
    implements _$ApiKeyCreatedDtoCopyWith<$Res> {
  __$ApiKeyCreatedDtoCopyWithImpl(this._self, this._then);

  final _ApiKeyCreatedDto _self;
  final $Res Function(_ApiKeyCreatedDto) _then;

/// Create a copy of ApiKeyCreatedDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? prefix = null,Object? scopes = null,Object? revokedAt = freezed,Object? createdAt = null,Object? key = null,}) {
  return _then(_ApiKeyCreatedDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,prefix: null == prefix ? _self.prefix : prefix // ignore: cast_nullable_to_non_nullable
as String,scopes: null == scopes ? _self._scopes : scopes // ignore: cast_nullable_to_non_nullable
as List<String>,revokedAt: freezed == revokedAt ? _self.revokedAt : revokedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ApiKeyPageDto {

 List<ApiKeyDto> get items; String? get nextCursor;
/// Create a copy of ApiKeyPageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiKeyPageDtoCopyWith<ApiKeyPageDto> get copyWith => _$ApiKeyPageDtoCopyWithImpl<ApiKeyPageDto>(this as ApiKeyPageDto, _$identity);

  /// Serializes this ApiKeyPageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiKeyPageDto&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),nextCursor);

@override
String toString() {
  return 'ApiKeyPageDto(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class $ApiKeyPageDtoCopyWith<$Res>  {
  factory $ApiKeyPageDtoCopyWith(ApiKeyPageDto value, $Res Function(ApiKeyPageDto) _then) = _$ApiKeyPageDtoCopyWithImpl;
@useResult
$Res call({
 List<ApiKeyDto> items, String? nextCursor
});




}
/// @nodoc
class _$ApiKeyPageDtoCopyWithImpl<$Res>
    implements $ApiKeyPageDtoCopyWith<$Res> {
  _$ApiKeyPageDtoCopyWithImpl(this._self, this._then);

  final ApiKeyPageDto _self;
  final $Res Function(ApiKeyPageDto) _then;

/// Create a copy of ApiKeyPageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(ApiKeyPageDto(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ApiKeyDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiKeyPageDto].
extension ApiKeyPageDtoPatterns on ApiKeyPageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiKeyPageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiKeyPageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiKeyPageDto value)  $default,){
final _that = this;
switch (_that) {
case _ApiKeyPageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiKeyPageDto value)?  $default,){
final _that = this;
switch (_that) {
case _ApiKeyPageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ApiKeyDto> items,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiKeyPageDto() when $default != null:
return $default(_that.items,_that.nextCursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ApiKeyDto> items,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _ApiKeyPageDto():
return $default(_that.items,_that.nextCursor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ApiKeyDto> items,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _ApiKeyPageDto() when $default != null:
return $default(_that.items,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApiKeyPageDto implements ApiKeyPageDto {
  const _ApiKeyPageDto({required  List<ApiKeyDto> items, this.nextCursor}): _items = items;
  factory _ApiKeyPageDto.fromJson(Map<String, dynamic> json) => _$ApiKeyPageDtoFromJson(json);

 final  List<ApiKeyDto> _items;
@override List<ApiKeyDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;

/// Create a copy of ApiKeyPageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiKeyPageDtoCopyWith<_ApiKeyPageDto> get copyWith => __$ApiKeyPageDtoCopyWithImpl<_ApiKeyPageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiKeyPageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiKeyPageDto&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor);

@override
String toString() {
  return 'ApiKeyPageDto(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$ApiKeyPageDtoCopyWith<$Res> implements $ApiKeyPageDtoCopyWith<$Res> {
  factory _$ApiKeyPageDtoCopyWith(_ApiKeyPageDto value, $Res Function(_ApiKeyPageDto) _then) = __$ApiKeyPageDtoCopyWithImpl;
@override @useResult
$Res call({
 List<ApiKeyDto> items, String? nextCursor
});




}
/// @nodoc
class __$ApiKeyPageDtoCopyWithImpl<$Res>
    implements _$ApiKeyPageDtoCopyWith<$Res> {
  __$ApiKeyPageDtoCopyWithImpl(this._self, this._then);

  final _ApiKeyPageDto _self;
  final $Res Function(_ApiKeyPageDto) _then;

/// Create a copy of ApiKeyPageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_ApiKeyPageDto(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ApiKeyDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ApiKeyCreateRequestDto {

 String get name; List<String> get scopes;
/// Create a copy of ApiKeyCreateRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiKeyCreateRequestDtoCopyWith<ApiKeyCreateRequestDto> get copyWith => _$ApiKeyCreateRequestDtoCopyWithImpl<ApiKeyCreateRequestDto>(this as ApiKeyCreateRequestDto, _$identity);

  /// Serializes this ApiKeyCreateRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiKeyCreateRequestDto&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.scopes, scopes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(scopes));

@override
String toString() {
  return 'ApiKeyCreateRequestDto(name: $name, scopes: $scopes)';
}


}

/// @nodoc
abstract mixin class $ApiKeyCreateRequestDtoCopyWith<$Res>  {
  factory $ApiKeyCreateRequestDtoCopyWith(ApiKeyCreateRequestDto value, $Res Function(ApiKeyCreateRequestDto) _then) = _$ApiKeyCreateRequestDtoCopyWithImpl;
@useResult
$Res call({
 String name, List<String> scopes
});




}
/// @nodoc
class _$ApiKeyCreateRequestDtoCopyWithImpl<$Res>
    implements $ApiKeyCreateRequestDtoCopyWith<$Res> {
  _$ApiKeyCreateRequestDtoCopyWithImpl(this._self, this._then);

  final ApiKeyCreateRequestDto _self;
  final $Res Function(ApiKeyCreateRequestDto) _then;

/// Create a copy of ApiKeyCreateRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? scopes = null,}) {
  return _then(ApiKeyCreateRequestDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,scopes: null == scopes ? _self.scopes : scopes // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiKeyCreateRequestDto].
extension ApiKeyCreateRequestDtoPatterns on ApiKeyCreateRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiKeyCreateRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiKeyCreateRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiKeyCreateRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _ApiKeyCreateRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiKeyCreateRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _ApiKeyCreateRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  List<String> scopes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiKeyCreateRequestDto() when $default != null:
return $default(_that.name,_that.scopes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  List<String> scopes)  $default,) {final _that = this;
switch (_that) {
case _ApiKeyCreateRequestDto():
return $default(_that.name,_that.scopes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  List<String> scopes)?  $default,) {final _that = this;
switch (_that) {
case _ApiKeyCreateRequestDto() when $default != null:
return $default(_that.name,_that.scopes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApiKeyCreateRequestDto implements ApiKeyCreateRequestDto {
  const _ApiKeyCreateRequestDto({required this.name, required  List<String> scopes}): _scopes = scopes;
  factory _ApiKeyCreateRequestDto.fromJson(Map<String, dynamic> json) => _$ApiKeyCreateRequestDtoFromJson(json);

@override final  String name;
 final  List<String> _scopes;
@override List<String> get scopes {
  if (_scopes is EqualUnmodifiableListView) return _scopes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scopes);
}


/// Create a copy of ApiKeyCreateRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiKeyCreateRequestDtoCopyWith<_ApiKeyCreateRequestDto> get copyWith => __$ApiKeyCreateRequestDtoCopyWithImpl<_ApiKeyCreateRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApiKeyCreateRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiKeyCreateRequestDto&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._scopes, _scopes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_scopes));

@override
String toString() {
  return 'ApiKeyCreateRequestDto(name: $name, scopes: $scopes)';
}


}

/// @nodoc
abstract mixin class _$ApiKeyCreateRequestDtoCopyWith<$Res> implements $ApiKeyCreateRequestDtoCopyWith<$Res> {
  factory _$ApiKeyCreateRequestDtoCopyWith(_ApiKeyCreateRequestDto value, $Res Function(_ApiKeyCreateRequestDto) _then) = __$ApiKeyCreateRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, List<String> scopes
});




}
/// @nodoc
class __$ApiKeyCreateRequestDtoCopyWithImpl<$Res>
    implements _$ApiKeyCreateRequestDtoCopyWith<$Res> {
  __$ApiKeyCreateRequestDtoCopyWithImpl(this._self, this._then);

  final _ApiKeyCreateRequestDto _self;
  final $Res Function(_ApiKeyCreateRequestDto) _then;

/// Create a copy of ApiKeyCreateRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? scopes = null,}) {
  return _then(_ApiKeyCreateRequestDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,scopes: null == scopes ? _self._scopes : scopes // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
