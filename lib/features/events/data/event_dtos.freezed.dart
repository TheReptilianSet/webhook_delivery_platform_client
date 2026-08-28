// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EventDto {

 String get id; String get type; int get version; DateTime get occurredAt; Map<String, dynamic> get data; DateTime get createdAt;
/// Create a copy of EventDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventDtoCopyWith<EventDto> get copyWith => _$EventDtoCopyWithImpl<EventDto>(this as EventDto, _$identity);

  /// Serializes this EventDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventDto&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.version, version) || other.version == version)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,version,occurredAt,const DeepCollectionEquality().hash(data),createdAt);

@override
String toString() {
  return 'EventDto(id: $id, type: $type, version: $version, occurredAt: $occurredAt, data: $data, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $EventDtoCopyWith<$Res>  {
  factory $EventDtoCopyWith(EventDto value, $Res Function(EventDto) _then) = _$EventDtoCopyWithImpl;
@useResult
$Res call({
 String id, String type, int version, DateTime occurredAt, Map<String, dynamic> data, DateTime createdAt
});




}
/// @nodoc
class _$EventDtoCopyWithImpl<$Res>
    implements $EventDtoCopyWith<$Res> {
  _$EventDtoCopyWithImpl(this._self, this._then);

  final EventDto _self;
  final $Res Function(EventDto) _then;

/// Create a copy of EventDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? version = null,Object? occurredAt = null,Object? data = null,Object? createdAt = null,}) {
  return _then(EventDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [EventDto].
extension EventDtoPatterns on EventDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventDto value)  $default,){
final _that = this;
switch (_that) {
case _EventDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventDto value)?  $default,){
final _that = this;
switch (_that) {
case _EventDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String type,  int version,  DateTime occurredAt,  Map<String, dynamic> data,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventDto() when $default != null:
return $default(_that.id,_that.type,_that.version,_that.occurredAt,_that.data,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String type,  int version,  DateTime occurredAt,  Map<String, dynamic> data,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _EventDto():
return $default(_that.id,_that.type,_that.version,_that.occurredAt,_that.data,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String type,  int version,  DateTime occurredAt,  Map<String, dynamic> data,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _EventDto() when $default != null:
return $default(_that.id,_that.type,_that.version,_that.occurredAt,_that.data,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EventDto implements EventDto {
  const _EventDto({required this.id, required this.type, required this.version, required this.occurredAt, required  Map<String, dynamic> data, required this.createdAt}): _data = data;
  factory _EventDto.fromJson(Map<String, dynamic> json) => _$EventDtoFromJson(json);

@override final  String id;
@override final  String type;
@override final  int version;
@override final  DateTime occurredAt;
 final  Map<String, dynamic> _data;
@override Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}

@override final  DateTime createdAt;

/// Create a copy of EventDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventDtoCopyWith<_EventDto> get copyWith => __$EventDtoCopyWithImpl<_EventDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventDto&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.version, version) || other.version == version)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,version,occurredAt,const DeepCollectionEquality().hash(_data),createdAt);

@override
String toString() {
  return 'EventDto(id: $id, type: $type, version: $version, occurredAt: $occurredAt, data: $data, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$EventDtoCopyWith<$Res> implements $EventDtoCopyWith<$Res> {
  factory _$EventDtoCopyWith(_EventDto value, $Res Function(_EventDto) _then) = __$EventDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String type, int version, DateTime occurredAt, Map<String, dynamic> data, DateTime createdAt
});




}
/// @nodoc
class __$EventDtoCopyWithImpl<$Res>
    implements _$EventDtoCopyWith<$Res> {
  __$EventDtoCopyWithImpl(this._self, this._then);

  final _EventDto _self;
  final $Res Function(_EventDto) _then;

/// Create a copy of EventDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? version = null,Object? occurredAt = null,Object? data = null,Object? createdAt = null,}) {
  return _then(_EventDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$EventDetailDto {

 String get id; String get type; int get version; DateTime get occurredAt; Map<String, dynamic> get data; DateTime get createdAt; Map<String, int> get deliverySummary;
/// Create a copy of EventDetailDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventDetailDtoCopyWith<EventDetailDto> get copyWith => _$EventDetailDtoCopyWithImpl<EventDetailDto>(this as EventDetailDto, _$identity);

  /// Serializes this EventDetailDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventDetailDto&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.version, version) || other.version == version)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.deliverySummary, deliverySummary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,version,occurredAt,const DeepCollectionEquality().hash(data),createdAt,const DeepCollectionEquality().hash(deliverySummary));

@override
String toString() {
  return 'EventDetailDto(id: $id, type: $type, version: $version, occurredAt: $occurredAt, data: $data, createdAt: $createdAt, deliverySummary: $deliverySummary)';
}


}

/// @nodoc
abstract mixin class $EventDetailDtoCopyWith<$Res>  {
  factory $EventDetailDtoCopyWith(EventDetailDto value, $Res Function(EventDetailDto) _then) = _$EventDetailDtoCopyWithImpl;
@useResult
$Res call({
 String id, String type, int version, DateTime occurredAt, Map<String, dynamic> data, DateTime createdAt, Map<String, int> deliverySummary
});




}
/// @nodoc
class _$EventDetailDtoCopyWithImpl<$Res>
    implements $EventDetailDtoCopyWith<$Res> {
  _$EventDetailDtoCopyWithImpl(this._self, this._then);

  final EventDetailDto _self;
  final $Res Function(EventDetailDto) _then;

/// Create a copy of EventDetailDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? version = null,Object? occurredAt = null,Object? data = null,Object? createdAt = null,Object? deliverySummary = null,}) {
  return _then(EventDetailDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,deliverySummary: null == deliverySummary ? _self.deliverySummary : deliverySummary // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}

}


/// Adds pattern-matching-related methods to [EventDetailDto].
extension EventDetailDtoPatterns on EventDetailDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventDetailDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventDetailDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventDetailDto value)  $default,){
final _that = this;
switch (_that) {
case _EventDetailDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventDetailDto value)?  $default,){
final _that = this;
switch (_that) {
case _EventDetailDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String type,  int version,  DateTime occurredAt,  Map<String, dynamic> data,  DateTime createdAt,  Map<String, int> deliverySummary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventDetailDto() when $default != null:
return $default(_that.id,_that.type,_that.version,_that.occurredAt,_that.data,_that.createdAt,_that.deliverySummary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String type,  int version,  DateTime occurredAt,  Map<String, dynamic> data,  DateTime createdAt,  Map<String, int> deliverySummary)  $default,) {final _that = this;
switch (_that) {
case _EventDetailDto():
return $default(_that.id,_that.type,_that.version,_that.occurredAt,_that.data,_that.createdAt,_that.deliverySummary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String type,  int version,  DateTime occurredAt,  Map<String, dynamic> data,  DateTime createdAt,  Map<String, int> deliverySummary)?  $default,) {final _that = this;
switch (_that) {
case _EventDetailDto() when $default != null:
return $default(_that.id,_that.type,_that.version,_that.occurredAt,_that.data,_that.createdAt,_that.deliverySummary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EventDetailDto implements EventDetailDto {
  const _EventDetailDto({required this.id, required this.type, required this.version, required this.occurredAt, required  Map<String, dynamic> data, required this.createdAt, required  Map<String, int> deliverySummary}): _data = data,_deliverySummary = deliverySummary;
  factory _EventDetailDto.fromJson(Map<String, dynamic> json) => _$EventDetailDtoFromJson(json);

@override final  String id;
@override final  String type;
@override final  int version;
@override final  DateTime occurredAt;
 final  Map<String, dynamic> _data;
@override Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}

@override final  DateTime createdAt;
 final  Map<String, int> _deliverySummary;
@override Map<String, int> get deliverySummary {
  if (_deliverySummary is EqualUnmodifiableMapView) return _deliverySummary;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_deliverySummary);
}


/// Create a copy of EventDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventDetailDtoCopyWith<_EventDetailDto> get copyWith => __$EventDetailDtoCopyWithImpl<_EventDetailDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventDetailDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventDetailDto&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.version, version) || other.version == version)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._deliverySummary, _deliverySummary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,version,occurredAt,const DeepCollectionEquality().hash(_data),createdAt,const DeepCollectionEquality().hash(_deliverySummary));

@override
String toString() {
  return 'EventDetailDto(id: $id, type: $type, version: $version, occurredAt: $occurredAt, data: $data, createdAt: $createdAt, deliverySummary: $deliverySummary)';
}


}

/// @nodoc
abstract mixin class _$EventDetailDtoCopyWith<$Res> implements $EventDetailDtoCopyWith<$Res> {
  factory _$EventDetailDtoCopyWith(_EventDetailDto value, $Res Function(_EventDetailDto) _then) = __$EventDetailDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String type, int version, DateTime occurredAt, Map<String, dynamic> data, DateTime createdAt, Map<String, int> deliverySummary
});




}
/// @nodoc
class __$EventDetailDtoCopyWithImpl<$Res>
    implements _$EventDetailDtoCopyWith<$Res> {
  __$EventDetailDtoCopyWithImpl(this._self, this._then);

  final _EventDetailDto _self;
  final $Res Function(_EventDetailDto) _then;

/// Create a copy of EventDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? version = null,Object? occurredAt = null,Object? data = null,Object? createdAt = null,Object? deliverySummary = null,}) {
  return _then(_EventDetailDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,deliverySummary: null == deliverySummary ? _self._deliverySummary : deliverySummary // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}


}


/// @nodoc
mixin _$EventPageDto {

 List<EventDto> get items; String? get nextCursor;
/// Create a copy of EventPageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventPageDtoCopyWith<EventPageDto> get copyWith => _$EventPageDtoCopyWithImpl<EventPageDto>(this as EventPageDto, _$identity);

  /// Serializes this EventPageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventPageDto&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),nextCursor);

@override
String toString() {
  return 'EventPageDto(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class $EventPageDtoCopyWith<$Res>  {
  factory $EventPageDtoCopyWith(EventPageDto value, $Res Function(EventPageDto) _then) = _$EventPageDtoCopyWithImpl;
@useResult
$Res call({
 List<EventDto> items, String? nextCursor
});




}
/// @nodoc
class _$EventPageDtoCopyWithImpl<$Res>
    implements $EventPageDtoCopyWith<$Res> {
  _$EventPageDtoCopyWithImpl(this._self, this._then);

  final EventPageDto _self;
  final $Res Function(EventPageDto) _then;

/// Create a copy of EventPageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(EventPageDto(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<EventDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EventPageDto].
extension EventPageDtoPatterns on EventPageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventPageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventPageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventPageDto value)  $default,){
final _that = this;
switch (_that) {
case _EventPageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventPageDto value)?  $default,){
final _that = this;
switch (_that) {
case _EventPageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<EventDto> items,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventPageDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<EventDto> items,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _EventPageDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<EventDto> items,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _EventPageDto() when $default != null:
return $default(_that.items,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EventPageDto implements EventPageDto {
  const _EventPageDto({required  List<EventDto> items, this.nextCursor}): _items = items;
  factory _EventPageDto.fromJson(Map<String, dynamic> json) => _$EventPageDtoFromJson(json);

 final  List<EventDto> _items;
@override List<EventDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;

/// Create a copy of EventPageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventPageDtoCopyWith<_EventPageDto> get copyWith => __$EventPageDtoCopyWithImpl<_EventPageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventPageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventPageDto&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor);

@override
String toString() {
  return 'EventPageDto(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$EventPageDtoCopyWith<$Res> implements $EventPageDtoCopyWith<$Res> {
  factory _$EventPageDtoCopyWith(_EventPageDto value, $Res Function(_EventPageDto) _then) = __$EventPageDtoCopyWithImpl;
@override @useResult
$Res call({
 List<EventDto> items, String? nextCursor
});




}
/// @nodoc
class __$EventPageDtoCopyWithImpl<$Res>
    implements _$EventPageDtoCopyWith<$Res> {
  __$EventPageDtoCopyWithImpl(this._self, this._then);

  final _EventPageDto _self;
  final $Res Function(_EventPageDto) _then;

/// Create a copy of EventPageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_EventPageDto(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<EventDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$EventCreateRequestDto {

 String get type; int get version; DateTime get occurredAt; Map<String, dynamic> get data;
/// Create a copy of EventCreateRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventCreateRequestDtoCopyWith<EventCreateRequestDto> get copyWith => _$EventCreateRequestDtoCopyWithImpl<EventCreateRequestDto>(this as EventCreateRequestDto, _$identity);

  /// Serializes this EventCreateRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventCreateRequestDto&&(identical(other.type, type) || other.type == type)&&(identical(other.version, version) || other.version == version)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,version,occurredAt,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'EventCreateRequestDto(type: $type, version: $version, occurredAt: $occurredAt, data: $data)';
}


}

/// @nodoc
abstract mixin class $EventCreateRequestDtoCopyWith<$Res>  {
  factory $EventCreateRequestDtoCopyWith(EventCreateRequestDto value, $Res Function(EventCreateRequestDto) _then) = _$EventCreateRequestDtoCopyWithImpl;
@useResult
$Res call({
 String type, int version, DateTime occurredAt, Map<String, dynamic> data
});




}
/// @nodoc
class _$EventCreateRequestDtoCopyWithImpl<$Res>
    implements $EventCreateRequestDtoCopyWith<$Res> {
  _$EventCreateRequestDtoCopyWithImpl(this._self, this._then);

  final EventCreateRequestDto _self;
  final $Res Function(EventCreateRequestDto) _then;

/// Create a copy of EventCreateRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? version = null,Object? occurredAt = null,Object? data = null,}) {
  return _then(EventCreateRequestDto(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [EventCreateRequestDto].
extension EventCreateRequestDtoPatterns on EventCreateRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventCreateRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventCreateRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventCreateRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _EventCreateRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventCreateRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _EventCreateRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  int version,  DateTime occurredAt,  Map<String, dynamic> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventCreateRequestDto() when $default != null:
return $default(_that.type,_that.version,_that.occurredAt,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  int version,  DateTime occurredAt,  Map<String, dynamic> data)  $default,) {final _that = this;
switch (_that) {
case _EventCreateRequestDto():
return $default(_that.type,_that.version,_that.occurredAt,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  int version,  DateTime occurredAt,  Map<String, dynamic> data)?  $default,) {final _that = this;
switch (_that) {
case _EventCreateRequestDto() when $default != null:
return $default(_that.type,_that.version,_that.occurredAt,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EventCreateRequestDto implements EventCreateRequestDto {
  const _EventCreateRequestDto({required this.type, required this.version, required this.occurredAt, required  Map<String, dynamic> data}): _data = data;
  factory _EventCreateRequestDto.fromJson(Map<String, dynamic> json) => _$EventCreateRequestDtoFromJson(json);

@override final  String type;
@override final  int version;
@override final  DateTime occurredAt;
 final  Map<String, dynamic> _data;
@override Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of EventCreateRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventCreateRequestDtoCopyWith<_EventCreateRequestDto> get copyWith => __$EventCreateRequestDtoCopyWithImpl<_EventCreateRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventCreateRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventCreateRequestDto&&(identical(other.type, type) || other.type == type)&&(identical(other.version, version) || other.version == version)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,version,occurredAt,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'EventCreateRequestDto(type: $type, version: $version, occurredAt: $occurredAt, data: $data)';
}


}

/// @nodoc
abstract mixin class _$EventCreateRequestDtoCopyWith<$Res> implements $EventCreateRequestDtoCopyWith<$Res> {
  factory _$EventCreateRequestDtoCopyWith(_EventCreateRequestDto value, $Res Function(_EventCreateRequestDto) _then) = __$EventCreateRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String type, int version, DateTime occurredAt, Map<String, dynamic> data
});




}
/// @nodoc
class __$EventCreateRequestDtoCopyWithImpl<$Res>
    implements _$EventCreateRequestDtoCopyWith<$Res> {
  __$EventCreateRequestDtoCopyWithImpl(this._self, this._then);

  final _EventCreateRequestDto _self;
  final $Res Function(_EventCreateRequestDto) _then;

/// Create a copy of EventCreateRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? version = null,Object? occurredAt = null,Object? data = null,}) {
  return _then(_EventCreateRequestDto(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,occurredAt: null == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$EventAcceptedDto {

 String get eventId; String get status; int get deliveryCount; DateTime get createdAt;
/// Create a copy of EventAcceptedDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventAcceptedDtoCopyWith<EventAcceptedDto> get copyWith => _$EventAcceptedDtoCopyWithImpl<EventAcceptedDto>(this as EventAcceptedDto, _$identity);

  /// Serializes this EventAcceptedDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventAcceptedDto&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.status, status) || other.status == status)&&(identical(other.deliveryCount, deliveryCount) || other.deliveryCount == deliveryCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventId,status,deliveryCount,createdAt);

@override
String toString() {
  return 'EventAcceptedDto(eventId: $eventId, status: $status, deliveryCount: $deliveryCount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $EventAcceptedDtoCopyWith<$Res>  {
  factory $EventAcceptedDtoCopyWith(EventAcceptedDto value, $Res Function(EventAcceptedDto) _then) = _$EventAcceptedDtoCopyWithImpl;
@useResult
$Res call({
 String eventId, String status, int deliveryCount, DateTime createdAt
});




}
/// @nodoc
class _$EventAcceptedDtoCopyWithImpl<$Res>
    implements $EventAcceptedDtoCopyWith<$Res> {
  _$EventAcceptedDtoCopyWithImpl(this._self, this._then);

  final EventAcceptedDto _self;
  final $Res Function(EventAcceptedDto) _then;

/// Create a copy of EventAcceptedDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? eventId = null,Object? status = null,Object? deliveryCount = null,Object? createdAt = null,}) {
  return _then(EventAcceptedDto(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,deliveryCount: null == deliveryCount ? _self.deliveryCount : deliveryCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [EventAcceptedDto].
extension EventAcceptedDtoPatterns on EventAcceptedDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventAcceptedDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventAcceptedDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventAcceptedDto value)  $default,){
final _that = this;
switch (_that) {
case _EventAcceptedDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventAcceptedDto value)?  $default,){
final _that = this;
switch (_that) {
case _EventAcceptedDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String eventId,  String status,  int deliveryCount,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventAcceptedDto() when $default != null:
return $default(_that.eventId,_that.status,_that.deliveryCount,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String eventId,  String status,  int deliveryCount,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _EventAcceptedDto():
return $default(_that.eventId,_that.status,_that.deliveryCount,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String eventId,  String status,  int deliveryCount,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _EventAcceptedDto() when $default != null:
return $default(_that.eventId,_that.status,_that.deliveryCount,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EventAcceptedDto implements EventAcceptedDto {
  const _EventAcceptedDto({required this.eventId, required this.status, required this.deliveryCount, required this.createdAt});
  factory _EventAcceptedDto.fromJson(Map<String, dynamic> json) => _$EventAcceptedDtoFromJson(json);

@override final  String eventId;
@override final  String status;
@override final  int deliveryCount;
@override final  DateTime createdAt;

/// Create a copy of EventAcceptedDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventAcceptedDtoCopyWith<_EventAcceptedDto> get copyWith => __$EventAcceptedDtoCopyWithImpl<_EventAcceptedDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventAcceptedDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventAcceptedDto&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.status, status) || other.status == status)&&(identical(other.deliveryCount, deliveryCount) || other.deliveryCount == deliveryCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,eventId,status,deliveryCount,createdAt);

@override
String toString() {
  return 'EventAcceptedDto(eventId: $eventId, status: $status, deliveryCount: $deliveryCount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$EventAcceptedDtoCopyWith<$Res> implements $EventAcceptedDtoCopyWith<$Res> {
  factory _$EventAcceptedDtoCopyWith(_EventAcceptedDto value, $Res Function(_EventAcceptedDto) _then) = __$EventAcceptedDtoCopyWithImpl;
@override @useResult
$Res call({
 String eventId, String status, int deliveryCount, DateTime createdAt
});




}
/// @nodoc
class __$EventAcceptedDtoCopyWithImpl<$Res>
    implements _$EventAcceptedDtoCopyWith<$Res> {
  __$EventAcceptedDtoCopyWithImpl(this._self, this._then);

  final _EventAcceptedDto _self;
  final $Res Function(_EventAcceptedDto) _then;

/// Create a copy of EventAcceptedDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? eventId = null,Object? status = null,Object? deliveryCount = null,Object? createdAt = null,}) {
  return _then(_EventAcceptedDto(
eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,deliveryCount: null == deliveryCount ? _self.deliveryCount : deliveryCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
