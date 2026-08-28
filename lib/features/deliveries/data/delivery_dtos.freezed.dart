// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeliveryDto {

 String get id; String get eventId; String get endpointId; String get status; int get attemptCount; DateTime? get nextAttemptAt; String? get replayOf; DateTime get createdAt;
/// Create a copy of DeliveryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryDtoCopyWith<DeliveryDto> get copyWith => _$DeliveryDtoCopyWithImpl<DeliveryDto>(this as DeliveryDto, _$identity);

  /// Serializes this DeliveryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryDto&&(identical(other.id, id) || other.id == id)&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.endpointId, endpointId) || other.endpointId == endpointId)&&(identical(other.status, status) || other.status == status)&&(identical(other.attemptCount, attemptCount) || other.attemptCount == attemptCount)&&(identical(other.nextAttemptAt, nextAttemptAt) || other.nextAttemptAt == nextAttemptAt)&&(identical(other.replayOf, replayOf) || other.replayOf == replayOf)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,eventId,endpointId,status,attemptCount,nextAttemptAt,replayOf,createdAt);

@override
String toString() {
  return 'DeliveryDto(id: $id, eventId: $eventId, endpointId: $endpointId, status: $status, attemptCount: $attemptCount, nextAttemptAt: $nextAttemptAt, replayOf: $replayOf, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $DeliveryDtoCopyWith<$Res>  {
  factory $DeliveryDtoCopyWith(DeliveryDto value, $Res Function(DeliveryDto) _then) = _$DeliveryDtoCopyWithImpl;
@useResult
$Res call({
 String id, String eventId, String endpointId, String status, int attemptCount, DateTime? nextAttemptAt, String? replayOf, DateTime createdAt
});




}
/// @nodoc
class _$DeliveryDtoCopyWithImpl<$Res>
    implements $DeliveryDtoCopyWith<$Res> {
  _$DeliveryDtoCopyWithImpl(this._self, this._then);

  final DeliveryDto _self;
  final $Res Function(DeliveryDto) _then;

/// Create a copy of DeliveryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? eventId = null,Object? endpointId = null,Object? status = null,Object? attemptCount = null,Object? nextAttemptAt = freezed,Object? replayOf = freezed,Object? createdAt = null,}) {
  return _then(DeliveryDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,endpointId: null == endpointId ? _self.endpointId : endpointId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,attemptCount: null == attemptCount ? _self.attemptCount : attemptCount // ignore: cast_nullable_to_non_nullable
as int,nextAttemptAt: freezed == nextAttemptAt ? _self.nextAttemptAt : nextAttemptAt // ignore: cast_nullable_to_non_nullable
as DateTime?,replayOf: freezed == replayOf ? _self.replayOf : replayOf // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [DeliveryDto].
extension DeliveryDtoPatterns on DeliveryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryDto value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryDto value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String eventId,  String endpointId,  String status,  int attemptCount,  DateTime? nextAttemptAt,  String? replayOf,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryDto() when $default != null:
return $default(_that.id,_that.eventId,_that.endpointId,_that.status,_that.attemptCount,_that.nextAttemptAt,_that.replayOf,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String eventId,  String endpointId,  String status,  int attemptCount,  DateTime? nextAttemptAt,  String? replayOf,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _DeliveryDto():
return $default(_that.id,_that.eventId,_that.endpointId,_that.status,_that.attemptCount,_that.nextAttemptAt,_that.replayOf,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String eventId,  String endpointId,  String status,  int attemptCount,  DateTime? nextAttemptAt,  String? replayOf,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryDto() when $default != null:
return $default(_that.id,_that.eventId,_that.endpointId,_that.status,_that.attemptCount,_that.nextAttemptAt,_that.replayOf,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeliveryDto implements DeliveryDto {
  const _DeliveryDto({required this.id, required this.eventId, required this.endpointId, required this.status, required this.attemptCount, this.nextAttemptAt, this.replayOf, required this.createdAt});
  factory _DeliveryDto.fromJson(Map<String, dynamic> json) => _$DeliveryDtoFromJson(json);

@override final  String id;
@override final  String eventId;
@override final  String endpointId;
@override final  String status;
@override final  int attemptCount;
@override final  DateTime? nextAttemptAt;
@override final  String? replayOf;
@override final  DateTime createdAt;

/// Create a copy of DeliveryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryDtoCopyWith<_DeliveryDto> get copyWith => __$DeliveryDtoCopyWithImpl<_DeliveryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeliveryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryDto&&(identical(other.id, id) || other.id == id)&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.endpointId, endpointId) || other.endpointId == endpointId)&&(identical(other.status, status) || other.status == status)&&(identical(other.attemptCount, attemptCount) || other.attemptCount == attemptCount)&&(identical(other.nextAttemptAt, nextAttemptAt) || other.nextAttemptAt == nextAttemptAt)&&(identical(other.replayOf, replayOf) || other.replayOf == replayOf)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,eventId,endpointId,status,attemptCount,nextAttemptAt,replayOf,createdAt);

@override
String toString() {
  return 'DeliveryDto(id: $id, eventId: $eventId, endpointId: $endpointId, status: $status, attemptCount: $attemptCount, nextAttemptAt: $nextAttemptAt, replayOf: $replayOf, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$DeliveryDtoCopyWith<$Res> implements $DeliveryDtoCopyWith<$Res> {
  factory _$DeliveryDtoCopyWith(_DeliveryDto value, $Res Function(_DeliveryDto) _then) = __$DeliveryDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String eventId, String endpointId, String status, int attemptCount, DateTime? nextAttemptAt, String? replayOf, DateTime createdAt
});




}
/// @nodoc
class __$DeliveryDtoCopyWithImpl<$Res>
    implements _$DeliveryDtoCopyWith<$Res> {
  __$DeliveryDtoCopyWithImpl(this._self, this._then);

  final _DeliveryDto _self;
  final $Res Function(_DeliveryDto) _then;

/// Create a copy of DeliveryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? eventId = null,Object? endpointId = null,Object? status = null,Object? attemptCount = null,Object? nextAttemptAt = freezed,Object? replayOf = freezed,Object? createdAt = null,}) {
  return _then(_DeliveryDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,endpointId: null == endpointId ? _self.endpointId : endpointId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,attemptCount: null == attemptCount ? _self.attemptCount : attemptCount // ignore: cast_nullable_to_non_nullable
as int,nextAttemptAt: freezed == nextAttemptAt ? _self.nextAttemptAt : nextAttemptAt // ignore: cast_nullable_to_non_nullable
as DateTime?,replayOf: freezed == replayOf ? _self.replayOf : replayOf // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$DeliveryPageDto {

 List<DeliveryDto> get items; String? get nextCursor;
/// Create a copy of DeliveryPageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryPageDtoCopyWith<DeliveryPageDto> get copyWith => _$DeliveryPageDtoCopyWithImpl<DeliveryPageDto>(this as DeliveryPageDto, _$identity);

  /// Serializes this DeliveryPageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryPageDto&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),nextCursor);

@override
String toString() {
  return 'DeliveryPageDto(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class $DeliveryPageDtoCopyWith<$Res>  {
  factory $DeliveryPageDtoCopyWith(DeliveryPageDto value, $Res Function(DeliveryPageDto) _then) = _$DeliveryPageDtoCopyWithImpl;
@useResult
$Res call({
 List<DeliveryDto> items, String? nextCursor
});




}
/// @nodoc
class _$DeliveryPageDtoCopyWithImpl<$Res>
    implements $DeliveryPageDtoCopyWith<$Res> {
  _$DeliveryPageDtoCopyWithImpl(this._self, this._then);

  final DeliveryPageDto _self;
  final $Res Function(DeliveryPageDto) _then;

/// Create a copy of DeliveryPageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(DeliveryPageDto(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<DeliveryDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeliveryPageDto].
extension DeliveryPageDtoPatterns on DeliveryPageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryPageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryPageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryPageDto value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryPageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryPageDto value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryPageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DeliveryDto> items,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryPageDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DeliveryDto> items,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _DeliveryPageDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DeliveryDto> items,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryPageDto() when $default != null:
return $default(_that.items,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeliveryPageDto implements DeliveryPageDto {
  const _DeliveryPageDto({required  List<DeliveryDto> items, this.nextCursor}): _items = items;
  factory _DeliveryPageDto.fromJson(Map<String, dynamic> json) => _$DeliveryPageDtoFromJson(json);

 final  List<DeliveryDto> _items;
@override List<DeliveryDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;

/// Create a copy of DeliveryPageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryPageDtoCopyWith<_DeliveryPageDto> get copyWith => __$DeliveryPageDtoCopyWithImpl<_DeliveryPageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeliveryPageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryPageDto&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor);

@override
String toString() {
  return 'DeliveryPageDto(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$DeliveryPageDtoCopyWith<$Res> implements $DeliveryPageDtoCopyWith<$Res> {
  factory _$DeliveryPageDtoCopyWith(_DeliveryPageDto value, $Res Function(_DeliveryPageDto) _then) = __$DeliveryPageDtoCopyWithImpl;
@override @useResult
$Res call({
 List<DeliveryDto> items, String? nextCursor
});




}
/// @nodoc
class __$DeliveryPageDtoCopyWithImpl<$Res>
    implements _$DeliveryPageDtoCopyWith<$Res> {
  __$DeliveryPageDtoCopyWithImpl(this._self, this._then);

  final _DeliveryPageDto _self;
  final $Res Function(_DeliveryPageDto) _then;

/// Create a copy of DeliveryPageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_DeliveryPageDto(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<DeliveryDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AttemptDto {

 String get id; int get attemptNumber; DateTime get startedAt; DateTime? get endedAt; String get outcome; int? get responseStatus; int? get latencyMs; String? get errorCode; Map<String, dynamic>? get retryDecision; bool get responsePreviewAvailable; String? get responsePreview; String? get responsePreviewEncoding; String? get responsePreviewError;
/// Create a copy of AttemptDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttemptDtoCopyWith<AttemptDto> get copyWith => _$AttemptDtoCopyWithImpl<AttemptDto>(this as AttemptDto, _$identity);

  /// Serializes this AttemptDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttemptDto&&(identical(other.id, id) || other.id == id)&&(identical(other.attemptNumber, attemptNumber) || other.attemptNumber == attemptNumber)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.endedAt, endedAt) || other.endedAt == endedAt)&&(identical(other.outcome, outcome) || other.outcome == outcome)&&(identical(other.responseStatus, responseStatus) || other.responseStatus == responseStatus)&&(identical(other.latencyMs, latencyMs) || other.latencyMs == latencyMs)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&const DeepCollectionEquality().equals(other.retryDecision, retryDecision)&&(identical(other.responsePreviewAvailable, responsePreviewAvailable) || other.responsePreviewAvailable == responsePreviewAvailable)&&(identical(other.responsePreview, responsePreview) || other.responsePreview == responsePreview)&&(identical(other.responsePreviewEncoding, responsePreviewEncoding) || other.responsePreviewEncoding == responsePreviewEncoding)&&(identical(other.responsePreviewError, responsePreviewError) || other.responsePreviewError == responsePreviewError));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attemptNumber,startedAt,endedAt,outcome,responseStatus,latencyMs,errorCode,const DeepCollectionEquality().hash(retryDecision),responsePreviewAvailable,responsePreview,responsePreviewEncoding,responsePreviewError);

@override
String toString() {
  return 'AttemptDto(id: $id, attemptNumber: $attemptNumber, startedAt: $startedAt, endedAt: $endedAt, outcome: $outcome, responseStatus: $responseStatus, latencyMs: $latencyMs, errorCode: $errorCode, retryDecision: $retryDecision, responsePreviewAvailable: $responsePreviewAvailable, responsePreview: $responsePreview, responsePreviewEncoding: $responsePreviewEncoding, responsePreviewError: $responsePreviewError)';
}


}

/// @nodoc
abstract mixin class $AttemptDtoCopyWith<$Res>  {
  factory $AttemptDtoCopyWith(AttemptDto value, $Res Function(AttemptDto) _then) = _$AttemptDtoCopyWithImpl;
@useResult
$Res call({
 String id, int attemptNumber, DateTime startedAt, DateTime? endedAt, String outcome, int? responseStatus, int? latencyMs, String? errorCode, Map<String, dynamic>? retryDecision, bool responsePreviewAvailable, String? responsePreview, String? responsePreviewEncoding, String? responsePreviewError
});




}
/// @nodoc
class _$AttemptDtoCopyWithImpl<$Res>
    implements $AttemptDtoCopyWith<$Res> {
  _$AttemptDtoCopyWithImpl(this._self, this._then);

  final AttemptDto _self;
  final $Res Function(AttemptDto) _then;

/// Create a copy of AttemptDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? attemptNumber = null,Object? startedAt = null,Object? endedAt = freezed,Object? outcome = null,Object? responseStatus = freezed,Object? latencyMs = freezed,Object? errorCode = freezed,Object? retryDecision = freezed,Object? responsePreviewAvailable = null,Object? responsePreview = freezed,Object? responsePreviewEncoding = freezed,Object? responsePreviewError = freezed,}) {
  return _then(AttemptDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,attemptNumber: null == attemptNumber ? _self.attemptNumber : attemptNumber // ignore: cast_nullable_to_non_nullable
as int,startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime,endedAt: freezed == endedAt ? _self.endedAt : endedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,outcome: null == outcome ? _self.outcome : outcome // ignore: cast_nullable_to_non_nullable
as String,responseStatus: freezed == responseStatus ? _self.responseStatus : responseStatus // ignore: cast_nullable_to_non_nullable
as int?,latencyMs: freezed == latencyMs ? _self.latencyMs : latencyMs // ignore: cast_nullable_to_non_nullable
as int?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as String?,retryDecision: freezed == retryDecision ? _self.retryDecision : retryDecision // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,responsePreviewAvailable: null == responsePreviewAvailable ? _self.responsePreviewAvailable : responsePreviewAvailable // ignore: cast_nullable_to_non_nullable
as bool,responsePreview: freezed == responsePreview ? _self.responsePreview : responsePreview // ignore: cast_nullable_to_non_nullable
as String?,responsePreviewEncoding: freezed == responsePreviewEncoding ? _self.responsePreviewEncoding : responsePreviewEncoding // ignore: cast_nullable_to_non_nullable
as String?,responsePreviewError: freezed == responsePreviewError ? _self.responsePreviewError : responsePreviewError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttemptDto].
extension AttemptDtoPatterns on AttemptDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttemptDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttemptDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttemptDto value)  $default,){
final _that = this;
switch (_that) {
case _AttemptDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttemptDto value)?  $default,){
final _that = this;
switch (_that) {
case _AttemptDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int attemptNumber,  DateTime startedAt,  DateTime? endedAt,  String outcome,  int? responseStatus,  int? latencyMs,  String? errorCode,  Map<String, dynamic>? retryDecision,  bool responsePreviewAvailable,  String? responsePreview,  String? responsePreviewEncoding,  String? responsePreviewError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttemptDto() when $default != null:
return $default(_that.id,_that.attemptNumber,_that.startedAt,_that.endedAt,_that.outcome,_that.responseStatus,_that.latencyMs,_that.errorCode,_that.retryDecision,_that.responsePreviewAvailable,_that.responsePreview,_that.responsePreviewEncoding,_that.responsePreviewError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int attemptNumber,  DateTime startedAt,  DateTime? endedAt,  String outcome,  int? responseStatus,  int? latencyMs,  String? errorCode,  Map<String, dynamic>? retryDecision,  bool responsePreviewAvailable,  String? responsePreview,  String? responsePreviewEncoding,  String? responsePreviewError)  $default,) {final _that = this;
switch (_that) {
case _AttemptDto():
return $default(_that.id,_that.attemptNumber,_that.startedAt,_that.endedAt,_that.outcome,_that.responseStatus,_that.latencyMs,_that.errorCode,_that.retryDecision,_that.responsePreviewAvailable,_that.responsePreview,_that.responsePreviewEncoding,_that.responsePreviewError);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int attemptNumber,  DateTime startedAt,  DateTime? endedAt,  String outcome,  int? responseStatus,  int? latencyMs,  String? errorCode,  Map<String, dynamic>? retryDecision,  bool responsePreviewAvailable,  String? responsePreview,  String? responsePreviewEncoding,  String? responsePreviewError)?  $default,) {final _that = this;
switch (_that) {
case _AttemptDto() when $default != null:
return $default(_that.id,_that.attemptNumber,_that.startedAt,_that.endedAt,_that.outcome,_that.responseStatus,_that.latencyMs,_that.errorCode,_that.retryDecision,_that.responsePreviewAvailable,_that.responsePreview,_that.responsePreviewEncoding,_that.responsePreviewError);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttemptDto implements AttemptDto {
  const _AttemptDto({required this.id, required this.attemptNumber, required this.startedAt, this.endedAt, required this.outcome, this.responseStatus, this.latencyMs, this.errorCode,  Map<String, dynamic>? retryDecision, required this.responsePreviewAvailable, this.responsePreview, this.responsePreviewEncoding, this.responsePreviewError}): _retryDecision = retryDecision;
  factory _AttemptDto.fromJson(Map<String, dynamic> json) => _$AttemptDtoFromJson(json);

@override final  String id;
@override final  int attemptNumber;
@override final  DateTime startedAt;
@override final  DateTime? endedAt;
@override final  String outcome;
@override final  int? responseStatus;
@override final  int? latencyMs;
@override final  String? errorCode;
 final  Map<String, dynamic>? _retryDecision;
@override Map<String, dynamic>? get retryDecision {
  final value = _retryDecision;
  if (value == null) return null;
  if (_retryDecision is EqualUnmodifiableMapView) return _retryDecision;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  bool responsePreviewAvailable;
@override final  String? responsePreview;
@override final  String? responsePreviewEncoding;
@override final  String? responsePreviewError;

/// Create a copy of AttemptDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttemptDtoCopyWith<_AttemptDto> get copyWith => __$AttemptDtoCopyWithImpl<_AttemptDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttemptDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttemptDto&&(identical(other.id, id) || other.id == id)&&(identical(other.attemptNumber, attemptNumber) || other.attemptNumber == attemptNumber)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.endedAt, endedAt) || other.endedAt == endedAt)&&(identical(other.outcome, outcome) || other.outcome == outcome)&&(identical(other.responseStatus, responseStatus) || other.responseStatus == responseStatus)&&(identical(other.latencyMs, latencyMs) || other.latencyMs == latencyMs)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&const DeepCollectionEquality().equals(other._retryDecision, _retryDecision)&&(identical(other.responsePreviewAvailable, responsePreviewAvailable) || other.responsePreviewAvailable == responsePreviewAvailable)&&(identical(other.responsePreview, responsePreview) || other.responsePreview == responsePreview)&&(identical(other.responsePreviewEncoding, responsePreviewEncoding) || other.responsePreviewEncoding == responsePreviewEncoding)&&(identical(other.responsePreviewError, responsePreviewError) || other.responsePreviewError == responsePreviewError));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attemptNumber,startedAt,endedAt,outcome,responseStatus,latencyMs,errorCode,const DeepCollectionEquality().hash(_retryDecision),responsePreviewAvailable,responsePreview,responsePreviewEncoding,responsePreviewError);

@override
String toString() {
  return 'AttemptDto(id: $id, attemptNumber: $attemptNumber, startedAt: $startedAt, endedAt: $endedAt, outcome: $outcome, responseStatus: $responseStatus, latencyMs: $latencyMs, errorCode: $errorCode, retryDecision: $retryDecision, responsePreviewAvailable: $responsePreviewAvailable, responsePreview: $responsePreview, responsePreviewEncoding: $responsePreviewEncoding, responsePreviewError: $responsePreviewError)';
}


}

/// @nodoc
abstract mixin class _$AttemptDtoCopyWith<$Res> implements $AttemptDtoCopyWith<$Res> {
  factory _$AttemptDtoCopyWith(_AttemptDto value, $Res Function(_AttemptDto) _then) = __$AttemptDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, int attemptNumber, DateTime startedAt, DateTime? endedAt, String outcome, int? responseStatus, int? latencyMs, String? errorCode, Map<String, dynamic>? retryDecision, bool responsePreviewAvailable, String? responsePreview, String? responsePreviewEncoding, String? responsePreviewError
});




}
/// @nodoc
class __$AttemptDtoCopyWithImpl<$Res>
    implements _$AttemptDtoCopyWith<$Res> {
  __$AttemptDtoCopyWithImpl(this._self, this._then);

  final _AttemptDto _self;
  final $Res Function(_AttemptDto) _then;

/// Create a copy of AttemptDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? attemptNumber = null,Object? startedAt = null,Object? endedAt = freezed,Object? outcome = null,Object? responseStatus = freezed,Object? latencyMs = freezed,Object? errorCode = freezed,Object? retryDecision = freezed,Object? responsePreviewAvailable = null,Object? responsePreview = freezed,Object? responsePreviewEncoding = freezed,Object? responsePreviewError = freezed,}) {
  return _then(_AttemptDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,attemptNumber: null == attemptNumber ? _self.attemptNumber : attemptNumber // ignore: cast_nullable_to_non_nullable
as int,startedAt: null == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime,endedAt: freezed == endedAt ? _self.endedAt : endedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,outcome: null == outcome ? _self.outcome : outcome // ignore: cast_nullable_to_non_nullable
as String,responseStatus: freezed == responseStatus ? _self.responseStatus : responseStatus // ignore: cast_nullable_to_non_nullable
as int?,latencyMs: freezed == latencyMs ? _self.latencyMs : latencyMs // ignore: cast_nullable_to_non_nullable
as int?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as String?,retryDecision: freezed == retryDecision ? _self._retryDecision : retryDecision // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,responsePreviewAvailable: null == responsePreviewAvailable ? _self.responsePreviewAvailable : responsePreviewAvailable // ignore: cast_nullable_to_non_nullable
as bool,responsePreview: freezed == responsePreview ? _self.responsePreview : responsePreview // ignore: cast_nullable_to_non_nullable
as String?,responsePreviewEncoding: freezed == responsePreviewEncoding ? _self.responsePreviewEncoding : responsePreviewEncoding // ignore: cast_nullable_to_non_nullable
as String?,responsePreviewError: freezed == responsePreviewError ? _self.responsePreviewError : responsePreviewError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AttemptPageDto {

 List<AttemptDto> get items; String? get nextCursor;
/// Create a copy of AttemptPageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttemptPageDtoCopyWith<AttemptPageDto> get copyWith => _$AttemptPageDtoCopyWithImpl<AttemptPageDto>(this as AttemptPageDto, _$identity);

  /// Serializes this AttemptPageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttemptPageDto&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),nextCursor);

@override
String toString() {
  return 'AttemptPageDto(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class $AttemptPageDtoCopyWith<$Res>  {
  factory $AttemptPageDtoCopyWith(AttemptPageDto value, $Res Function(AttemptPageDto) _then) = _$AttemptPageDtoCopyWithImpl;
@useResult
$Res call({
 List<AttemptDto> items, String? nextCursor
});




}
/// @nodoc
class _$AttemptPageDtoCopyWithImpl<$Res>
    implements $AttemptPageDtoCopyWith<$Res> {
  _$AttemptPageDtoCopyWithImpl(this._self, this._then);

  final AttemptPageDto _self;
  final $Res Function(AttemptPageDto) _then;

/// Create a copy of AttemptPageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(AttemptPageDto(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<AttemptDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttemptPageDto].
extension AttemptPageDtoPatterns on AttemptPageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttemptPageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttemptPageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttemptPageDto value)  $default,){
final _that = this;
switch (_that) {
case _AttemptPageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttemptPageDto value)?  $default,){
final _that = this;
switch (_that) {
case _AttemptPageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AttemptDto> items,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttemptPageDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AttemptDto> items,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _AttemptPageDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AttemptDto> items,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _AttemptPageDto() when $default != null:
return $default(_that.items,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttemptPageDto implements AttemptPageDto {
  const _AttemptPageDto({required  List<AttemptDto> items, this.nextCursor}): _items = items;
  factory _AttemptPageDto.fromJson(Map<String, dynamic> json) => _$AttemptPageDtoFromJson(json);

 final  List<AttemptDto> _items;
@override List<AttemptDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;

/// Create a copy of AttemptPageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttemptPageDtoCopyWith<_AttemptPageDto> get copyWith => __$AttemptPageDtoCopyWithImpl<_AttemptPageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttemptPageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttemptPageDto&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor);

@override
String toString() {
  return 'AttemptPageDto(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$AttemptPageDtoCopyWith<$Res> implements $AttemptPageDtoCopyWith<$Res> {
  factory _$AttemptPageDtoCopyWith(_AttemptPageDto value, $Res Function(_AttemptPageDto) _then) = __$AttemptPageDtoCopyWithImpl;
@override @useResult
$Res call({
 List<AttemptDto> items, String? nextCursor
});




}
/// @nodoc
class __$AttemptPageDtoCopyWithImpl<$Res>
    implements _$AttemptPageDtoCopyWith<$Res> {
  __$AttemptPageDtoCopyWithImpl(this._self, this._then);

  final _AttemptPageDto _self;
  final $Res Function(_AttemptPageDto) _then;

/// Create a copy of AttemptPageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_AttemptPageDto(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<AttemptDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
