// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'endpoint_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EndpointDto {

 String get id; String get name; String get url; String get status; bool get enabled; List<String> get eventTypes; DateTime get createdAt;
/// Create a copy of EndpointDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EndpointDtoCopyWith<EndpointDto> get copyWith => _$EndpointDtoCopyWithImpl<EndpointDto>(this as EndpointDto, _$identity);

  /// Serializes this EndpointDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EndpointDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.status, status) || other.status == status)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&const DeepCollectionEquality().equals(other.eventTypes, eventTypes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,url,status,enabled,const DeepCollectionEquality().hash(eventTypes),createdAt);

@override
String toString() {
  return 'EndpointDto(id: $id, name: $name, url: $url, status: $status, enabled: $enabled, eventTypes: $eventTypes, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $EndpointDtoCopyWith<$Res>  {
  factory $EndpointDtoCopyWith(EndpointDto value, $Res Function(EndpointDto) _then) = _$EndpointDtoCopyWithImpl;
@useResult
$Res call({
 String id, String name, String url, String status, bool enabled, List<String> eventTypes, DateTime createdAt
});




}
/// @nodoc
class _$EndpointDtoCopyWithImpl<$Res>
    implements $EndpointDtoCopyWith<$Res> {
  _$EndpointDtoCopyWithImpl(this._self, this._then);

  final EndpointDto _self;
  final $Res Function(EndpointDto) _then;

/// Create a copy of EndpointDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? url = null,Object? status = null,Object? enabled = null,Object? eventTypes = null,Object? createdAt = null,}) {
  return _then(EndpointDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,eventTypes: null == eventTypes ? _self.eventTypes : eventTypes // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [EndpointDto].
extension EndpointDtoPatterns on EndpointDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EndpointDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EndpointDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EndpointDto value)  $default,){
final _that = this;
switch (_that) {
case _EndpointDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EndpointDto value)?  $default,){
final _that = this;
switch (_that) {
case _EndpointDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String url,  String status,  bool enabled,  List<String> eventTypes,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EndpointDto() when $default != null:
return $default(_that.id,_that.name,_that.url,_that.status,_that.enabled,_that.eventTypes,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String url,  String status,  bool enabled,  List<String> eventTypes,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _EndpointDto():
return $default(_that.id,_that.name,_that.url,_that.status,_that.enabled,_that.eventTypes,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String url,  String status,  bool enabled,  List<String> eventTypes,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _EndpointDto() when $default != null:
return $default(_that.id,_that.name,_that.url,_that.status,_that.enabled,_that.eventTypes,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EndpointDto implements EndpointDto {
  const _EndpointDto({required this.id, required this.name, required this.url, required this.status, required this.enabled, required  List<String> eventTypes, required this.createdAt}): _eventTypes = eventTypes;
  factory _EndpointDto.fromJson(Map<String, dynamic> json) => _$EndpointDtoFromJson(json);

@override final  String id;
@override final  String name;
@override final  String url;
@override final  String status;
@override final  bool enabled;
 final  List<String> _eventTypes;
@override List<String> get eventTypes {
  if (_eventTypes is EqualUnmodifiableListView) return _eventTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_eventTypes);
}

@override final  DateTime createdAt;

/// Create a copy of EndpointDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EndpointDtoCopyWith<_EndpointDto> get copyWith => __$EndpointDtoCopyWithImpl<_EndpointDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EndpointDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EndpointDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.status, status) || other.status == status)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&const DeepCollectionEquality().equals(other._eventTypes, _eventTypes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,url,status,enabled,const DeepCollectionEquality().hash(_eventTypes),createdAt);

@override
String toString() {
  return 'EndpointDto(id: $id, name: $name, url: $url, status: $status, enabled: $enabled, eventTypes: $eventTypes, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$EndpointDtoCopyWith<$Res> implements $EndpointDtoCopyWith<$Res> {
  factory _$EndpointDtoCopyWith(_EndpointDto value, $Res Function(_EndpointDto) _then) = __$EndpointDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String url, String status, bool enabled, List<String> eventTypes, DateTime createdAt
});




}
/// @nodoc
class __$EndpointDtoCopyWithImpl<$Res>
    implements _$EndpointDtoCopyWith<$Res> {
  __$EndpointDtoCopyWithImpl(this._self, this._then);

  final _EndpointDto _self;
  final $Res Function(_EndpointDto) _then;

/// Create a copy of EndpointDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? url = null,Object? status = null,Object? enabled = null,Object? eventTypes = null,Object? createdAt = null,}) {
  return _then(_EndpointDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,eventTypes: null == eventTypes ? _self._eventTypes : eventTypes // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$EndpointCreatedDto {

 String get id; String get name; String get url; String get status; bool get enabled; List<String> get eventTypes; DateTime get createdAt; String get signingSecret;
/// Create a copy of EndpointCreatedDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EndpointCreatedDtoCopyWith<EndpointCreatedDto> get copyWith => _$EndpointCreatedDtoCopyWithImpl<EndpointCreatedDto>(this as EndpointCreatedDto, _$identity);

  /// Serializes this EndpointCreatedDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EndpointCreatedDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.status, status) || other.status == status)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&const DeepCollectionEquality().equals(other.eventTypes, eventTypes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.signingSecret, signingSecret) || other.signingSecret == signingSecret));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,url,status,enabled,const DeepCollectionEquality().hash(eventTypes),createdAt,signingSecret);

@override
String toString() {
  return 'EndpointCreatedDto(id: $id, name: $name, url: $url, status: $status, enabled: $enabled, eventTypes: $eventTypes, createdAt: $createdAt, signingSecret: $signingSecret)';
}


}

/// @nodoc
abstract mixin class $EndpointCreatedDtoCopyWith<$Res>  {
  factory $EndpointCreatedDtoCopyWith(EndpointCreatedDto value, $Res Function(EndpointCreatedDto) _then) = _$EndpointCreatedDtoCopyWithImpl;
@useResult
$Res call({
 String id, String name, String url, String status, bool enabled, List<String> eventTypes, DateTime createdAt, String signingSecret
});




}
/// @nodoc
class _$EndpointCreatedDtoCopyWithImpl<$Res>
    implements $EndpointCreatedDtoCopyWith<$Res> {
  _$EndpointCreatedDtoCopyWithImpl(this._self, this._then);

  final EndpointCreatedDto _self;
  final $Res Function(EndpointCreatedDto) _then;

/// Create a copy of EndpointCreatedDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? url = null,Object? status = null,Object? enabled = null,Object? eventTypes = null,Object? createdAt = null,Object? signingSecret = null,}) {
  return _then(EndpointCreatedDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,eventTypes: null == eventTypes ? _self.eventTypes : eventTypes // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,signingSecret: null == signingSecret ? _self.signingSecret : signingSecret // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EndpointCreatedDto].
extension EndpointCreatedDtoPatterns on EndpointCreatedDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EndpointCreatedDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EndpointCreatedDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EndpointCreatedDto value)  $default,){
final _that = this;
switch (_that) {
case _EndpointCreatedDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EndpointCreatedDto value)?  $default,){
final _that = this;
switch (_that) {
case _EndpointCreatedDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String url,  String status,  bool enabled,  List<String> eventTypes,  DateTime createdAt,  String signingSecret)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EndpointCreatedDto() when $default != null:
return $default(_that.id,_that.name,_that.url,_that.status,_that.enabled,_that.eventTypes,_that.createdAt,_that.signingSecret);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String url,  String status,  bool enabled,  List<String> eventTypes,  DateTime createdAt,  String signingSecret)  $default,) {final _that = this;
switch (_that) {
case _EndpointCreatedDto():
return $default(_that.id,_that.name,_that.url,_that.status,_that.enabled,_that.eventTypes,_that.createdAt,_that.signingSecret);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String url,  String status,  bool enabled,  List<String> eventTypes,  DateTime createdAt,  String signingSecret)?  $default,) {final _that = this;
switch (_that) {
case _EndpointCreatedDto() when $default != null:
return $default(_that.id,_that.name,_that.url,_that.status,_that.enabled,_that.eventTypes,_that.createdAt,_that.signingSecret);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EndpointCreatedDto implements EndpointCreatedDto {
  const _EndpointCreatedDto({required this.id, required this.name, required this.url, required this.status, required this.enabled, required  List<String> eventTypes, required this.createdAt, required this.signingSecret}): _eventTypes = eventTypes;
  factory _EndpointCreatedDto.fromJson(Map<String, dynamic> json) => _$EndpointCreatedDtoFromJson(json);

@override final  String id;
@override final  String name;
@override final  String url;
@override final  String status;
@override final  bool enabled;
 final  List<String> _eventTypes;
@override List<String> get eventTypes {
  if (_eventTypes is EqualUnmodifiableListView) return _eventTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_eventTypes);
}

@override final  DateTime createdAt;
@override final  String signingSecret;

/// Create a copy of EndpointCreatedDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EndpointCreatedDtoCopyWith<_EndpointCreatedDto> get copyWith => __$EndpointCreatedDtoCopyWithImpl<_EndpointCreatedDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EndpointCreatedDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EndpointCreatedDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.status, status) || other.status == status)&&(identical(other.enabled, enabled) || other.enabled == enabled)&&const DeepCollectionEquality().equals(other._eventTypes, _eventTypes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.signingSecret, signingSecret) || other.signingSecret == signingSecret));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,url,status,enabled,const DeepCollectionEquality().hash(_eventTypes),createdAt,signingSecret);

@override
String toString() {
  return 'EndpointCreatedDto(id: $id, name: $name, url: $url, status: $status, enabled: $enabled, eventTypes: $eventTypes, createdAt: $createdAt, signingSecret: $signingSecret)';
}


}

/// @nodoc
abstract mixin class _$EndpointCreatedDtoCopyWith<$Res> implements $EndpointCreatedDtoCopyWith<$Res> {
  factory _$EndpointCreatedDtoCopyWith(_EndpointCreatedDto value, $Res Function(_EndpointCreatedDto) _then) = __$EndpointCreatedDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String url, String status, bool enabled, List<String> eventTypes, DateTime createdAt, String signingSecret
});




}
/// @nodoc
class __$EndpointCreatedDtoCopyWithImpl<$Res>
    implements _$EndpointCreatedDtoCopyWith<$Res> {
  __$EndpointCreatedDtoCopyWithImpl(this._self, this._then);

  final _EndpointCreatedDto _self;
  final $Res Function(_EndpointCreatedDto) _then;

/// Create a copy of EndpointCreatedDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? url = null,Object? status = null,Object? enabled = null,Object? eventTypes = null,Object? createdAt = null,Object? signingSecret = null,}) {
  return _then(_EndpointCreatedDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,enabled: null == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool,eventTypes: null == eventTypes ? _self._eventTypes : eventTypes // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,signingSecret: null == signingSecret ? _self.signingSecret : signingSecret // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$EndpointPageDto {

 List<EndpointDto> get items; String? get nextCursor;
/// Create a copy of EndpointPageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EndpointPageDtoCopyWith<EndpointPageDto> get copyWith => _$EndpointPageDtoCopyWithImpl<EndpointPageDto>(this as EndpointPageDto, _$identity);

  /// Serializes this EndpointPageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EndpointPageDto&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),nextCursor);

@override
String toString() {
  return 'EndpointPageDto(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class $EndpointPageDtoCopyWith<$Res>  {
  factory $EndpointPageDtoCopyWith(EndpointPageDto value, $Res Function(EndpointPageDto) _then) = _$EndpointPageDtoCopyWithImpl;
@useResult
$Res call({
 List<EndpointDto> items, String? nextCursor
});




}
/// @nodoc
class _$EndpointPageDtoCopyWithImpl<$Res>
    implements $EndpointPageDtoCopyWith<$Res> {
  _$EndpointPageDtoCopyWithImpl(this._self, this._then);

  final EndpointPageDto _self;
  final $Res Function(EndpointPageDto) _then;

/// Create a copy of EndpointPageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(EndpointPageDto(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<EndpointDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EndpointPageDto].
extension EndpointPageDtoPatterns on EndpointPageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EndpointPageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EndpointPageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EndpointPageDto value)  $default,){
final _that = this;
switch (_that) {
case _EndpointPageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EndpointPageDto value)?  $default,){
final _that = this;
switch (_that) {
case _EndpointPageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<EndpointDto> items,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EndpointPageDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<EndpointDto> items,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _EndpointPageDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<EndpointDto> items,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _EndpointPageDto() when $default != null:
return $default(_that.items,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EndpointPageDto implements EndpointPageDto {
  const _EndpointPageDto({required  List<EndpointDto> items, this.nextCursor}): _items = items;
  factory _EndpointPageDto.fromJson(Map<String, dynamic> json) => _$EndpointPageDtoFromJson(json);

 final  List<EndpointDto> _items;
@override List<EndpointDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;

/// Create a copy of EndpointPageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EndpointPageDtoCopyWith<_EndpointPageDto> get copyWith => __$EndpointPageDtoCopyWithImpl<_EndpointPageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EndpointPageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EndpointPageDto&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor);

@override
String toString() {
  return 'EndpointPageDto(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$EndpointPageDtoCopyWith<$Res> implements $EndpointPageDtoCopyWith<$Res> {
  factory _$EndpointPageDtoCopyWith(_EndpointPageDto value, $Res Function(_EndpointPageDto) _then) = __$EndpointPageDtoCopyWithImpl;
@override @useResult
$Res call({
 List<EndpointDto> items, String? nextCursor
});




}
/// @nodoc
class __$EndpointPageDtoCopyWithImpl<$Res>
    implements _$EndpointPageDtoCopyWith<$Res> {
  __$EndpointPageDtoCopyWithImpl(this._self, this._then);

  final _EndpointPageDto _self;
  final $Res Function(_EndpointPageDto) _then;

/// Create a copy of EndpointPageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_EndpointPageDto(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<EndpointDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$EndpointCreateRequestDto {

 String get name; String get url; List<String> get eventTypes;
/// Create a copy of EndpointCreateRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EndpointCreateRequestDtoCopyWith<EndpointCreateRequestDto> get copyWith => _$EndpointCreateRequestDtoCopyWithImpl<EndpointCreateRequestDto>(this as EndpointCreateRequestDto, _$identity);

  /// Serializes this EndpointCreateRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EndpointCreateRequestDto&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other.eventTypes, eventTypes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url,const DeepCollectionEquality().hash(eventTypes));

@override
String toString() {
  return 'EndpointCreateRequestDto(name: $name, url: $url, eventTypes: $eventTypes)';
}


}

/// @nodoc
abstract mixin class $EndpointCreateRequestDtoCopyWith<$Res>  {
  factory $EndpointCreateRequestDtoCopyWith(EndpointCreateRequestDto value, $Res Function(EndpointCreateRequestDto) _then) = _$EndpointCreateRequestDtoCopyWithImpl;
@useResult
$Res call({
 String name, String url, List<String> eventTypes
});




}
/// @nodoc
class _$EndpointCreateRequestDtoCopyWithImpl<$Res>
    implements $EndpointCreateRequestDtoCopyWith<$Res> {
  _$EndpointCreateRequestDtoCopyWithImpl(this._self, this._then);

  final EndpointCreateRequestDto _self;
  final $Res Function(EndpointCreateRequestDto) _then;

/// Create a copy of EndpointCreateRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? url = null,Object? eventTypes = null,}) {
  return _then(EndpointCreateRequestDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,eventTypes: null == eventTypes ? _self.eventTypes : eventTypes // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [EndpointCreateRequestDto].
extension EndpointCreateRequestDtoPatterns on EndpointCreateRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EndpointCreateRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EndpointCreateRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EndpointCreateRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _EndpointCreateRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EndpointCreateRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _EndpointCreateRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String url,  List<String> eventTypes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EndpointCreateRequestDto() when $default != null:
return $default(_that.name,_that.url,_that.eventTypes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String url,  List<String> eventTypes)  $default,) {final _that = this;
switch (_that) {
case _EndpointCreateRequestDto():
return $default(_that.name,_that.url,_that.eventTypes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String url,  List<String> eventTypes)?  $default,) {final _that = this;
switch (_that) {
case _EndpointCreateRequestDto() when $default != null:
return $default(_that.name,_that.url,_that.eventTypes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EndpointCreateRequestDto implements EndpointCreateRequestDto {
  const _EndpointCreateRequestDto({required this.name, required this.url, required  List<String> eventTypes}): _eventTypes = eventTypes;
  factory _EndpointCreateRequestDto.fromJson(Map<String, dynamic> json) => _$EndpointCreateRequestDtoFromJson(json);

@override final  String name;
@override final  String url;
 final  List<String> _eventTypes;
@override List<String> get eventTypes {
  if (_eventTypes is EqualUnmodifiableListView) return _eventTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_eventTypes);
}


/// Create a copy of EndpointCreateRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EndpointCreateRequestDtoCopyWith<_EndpointCreateRequestDto> get copyWith => __$EndpointCreateRequestDtoCopyWithImpl<_EndpointCreateRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EndpointCreateRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EndpointCreateRequestDto&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other._eventTypes, _eventTypes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url,const DeepCollectionEquality().hash(_eventTypes));

@override
String toString() {
  return 'EndpointCreateRequestDto(name: $name, url: $url, eventTypes: $eventTypes)';
}


}

/// @nodoc
abstract mixin class _$EndpointCreateRequestDtoCopyWith<$Res> implements $EndpointCreateRequestDtoCopyWith<$Res> {
  factory _$EndpointCreateRequestDtoCopyWith(_EndpointCreateRequestDto value, $Res Function(_EndpointCreateRequestDto) _then) = __$EndpointCreateRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, String url, List<String> eventTypes
});




}
/// @nodoc
class __$EndpointCreateRequestDtoCopyWithImpl<$Res>
    implements _$EndpointCreateRequestDtoCopyWith<$Res> {
  __$EndpointCreateRequestDtoCopyWithImpl(this._self, this._then);

  final _EndpointCreateRequestDto _self;
  final $Res Function(_EndpointCreateRequestDto) _then;

/// Create a copy of EndpointCreateRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? url = null,Object? eventTypes = null,}) {
  return _then(_EndpointCreateRequestDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,eventTypes: null == eventTypes ? _self._eventTypes : eventTypes // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$EndpointUpdateRequestDto {

 String? get name; String? get url; List<String>? get eventTypes; bool? get enabled;
/// Create a copy of EndpointUpdateRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EndpointUpdateRequestDtoCopyWith<EndpointUpdateRequestDto> get copyWith => _$EndpointUpdateRequestDtoCopyWithImpl<EndpointUpdateRequestDto>(this as EndpointUpdateRequestDto, _$identity);

  /// Serializes this EndpointUpdateRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EndpointUpdateRequestDto&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other.eventTypes, eventTypes)&&(identical(other.enabled, enabled) || other.enabled == enabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url,const DeepCollectionEquality().hash(eventTypes),enabled);

@override
String toString() {
  return 'EndpointUpdateRequestDto(name: $name, url: $url, eventTypes: $eventTypes, enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class $EndpointUpdateRequestDtoCopyWith<$Res>  {
  factory $EndpointUpdateRequestDtoCopyWith(EndpointUpdateRequestDto value, $Res Function(EndpointUpdateRequestDto) _then) = _$EndpointUpdateRequestDtoCopyWithImpl;
@useResult
$Res call({
 String? name, String? url, List<String>? eventTypes, bool? enabled
});




}
/// @nodoc
class _$EndpointUpdateRequestDtoCopyWithImpl<$Res>
    implements $EndpointUpdateRequestDtoCopyWith<$Res> {
  _$EndpointUpdateRequestDtoCopyWithImpl(this._self, this._then);

  final EndpointUpdateRequestDto _self;
  final $Res Function(EndpointUpdateRequestDto) _then;

/// Create a copy of EndpointUpdateRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? url = freezed,Object? eventTypes = freezed,Object? enabled = freezed,}) {
  return _then(EndpointUpdateRequestDto(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,eventTypes: freezed == eventTypes ? _self.eventTypes : eventTypes // ignore: cast_nullable_to_non_nullable
as List<String>?,enabled: freezed == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [EndpointUpdateRequestDto].
extension EndpointUpdateRequestDtoPatterns on EndpointUpdateRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EndpointUpdateRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EndpointUpdateRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EndpointUpdateRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _EndpointUpdateRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EndpointUpdateRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _EndpointUpdateRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? url,  List<String>? eventTypes,  bool? enabled)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EndpointUpdateRequestDto() when $default != null:
return $default(_that.name,_that.url,_that.eventTypes,_that.enabled);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? url,  List<String>? eventTypes,  bool? enabled)  $default,) {final _that = this;
switch (_that) {
case _EndpointUpdateRequestDto():
return $default(_that.name,_that.url,_that.eventTypes,_that.enabled);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? url,  List<String>? eventTypes,  bool? enabled)?  $default,) {final _that = this;
switch (_that) {
case _EndpointUpdateRequestDto() when $default != null:
return $default(_that.name,_that.url,_that.eventTypes,_that.enabled);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EndpointUpdateRequestDto implements EndpointUpdateRequestDto {
  const _EndpointUpdateRequestDto({this.name, this.url,  List<String>? eventTypes, this.enabled}): _eventTypes = eventTypes;
  factory _EndpointUpdateRequestDto.fromJson(Map<String, dynamic> json) => _$EndpointUpdateRequestDtoFromJson(json);

@override final  String? name;
@override final  String? url;
 final  List<String>? _eventTypes;
@override List<String>? get eventTypes {
  final value = _eventTypes;
  if (value == null) return null;
  if (_eventTypes is EqualUnmodifiableListView) return _eventTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? enabled;

/// Create a copy of EndpointUpdateRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EndpointUpdateRequestDtoCopyWith<_EndpointUpdateRequestDto> get copyWith => __$EndpointUpdateRequestDtoCopyWithImpl<_EndpointUpdateRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EndpointUpdateRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EndpointUpdateRequestDto&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other._eventTypes, _eventTypes)&&(identical(other.enabled, enabled) || other.enabled == enabled));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url,const DeepCollectionEquality().hash(_eventTypes),enabled);

@override
String toString() {
  return 'EndpointUpdateRequestDto(name: $name, url: $url, eventTypes: $eventTypes, enabled: $enabled)';
}


}

/// @nodoc
abstract mixin class _$EndpointUpdateRequestDtoCopyWith<$Res> implements $EndpointUpdateRequestDtoCopyWith<$Res> {
  factory _$EndpointUpdateRequestDtoCopyWith(_EndpointUpdateRequestDto value, $Res Function(_EndpointUpdateRequestDto) _then) = __$EndpointUpdateRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? url, List<String>? eventTypes, bool? enabled
});




}
/// @nodoc
class __$EndpointUpdateRequestDtoCopyWithImpl<$Res>
    implements _$EndpointUpdateRequestDtoCopyWith<$Res> {
  __$EndpointUpdateRequestDtoCopyWithImpl(this._self, this._then);

  final _EndpointUpdateRequestDto _self;
  final $Res Function(_EndpointUpdateRequestDto) _then;

/// Create a copy of EndpointUpdateRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? url = freezed,Object? eventTypes = freezed,Object? enabled = freezed,}) {
  return _then(_EndpointUpdateRequestDto(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,eventTypes: freezed == eventTypes ? _self._eventTypes : eventTypes // ignore: cast_nullable_to_non_nullable
as List<String>?,enabled: freezed == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
