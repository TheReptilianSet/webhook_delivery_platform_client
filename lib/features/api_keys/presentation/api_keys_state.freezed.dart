// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_keys_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ApiKeysEvent {

 String get key;
/// Create a copy of ApiKeysEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiKeysEventCopyWith<ApiKeysEvent> get copyWith => _$ApiKeysEventCopyWithImpl<ApiKeysEvent>(this as ApiKeysEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiKeysEvent&&(identical(other.key, key) || other.key == key));
}


@override
int get hashCode => Object.hash(runtimeType,key);

@override
String toString() {
  return 'ApiKeysEvent(key: $key)';
}


}

/// @nodoc
abstract mixin class $ApiKeysEventCopyWith<$Res>  {
  factory $ApiKeysEventCopyWith(ApiKeysEvent value, $Res Function(ApiKeysEvent) _then) = _$ApiKeysEventCopyWithImpl;
@useResult
$Res call({
 String key
});




}
/// @nodoc
class _$ApiKeysEventCopyWithImpl<$Res>
    implements $ApiKeysEventCopyWith<$Res> {
  _$ApiKeysEventCopyWithImpl(this._self, this._then);

  final ApiKeysEvent _self;
  final $Res Function(ApiKeysEvent) _then;

/// Create a copy of ApiKeysEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,}) {
  return _then(ApiKeysEvent.keyCreated(
null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ApiKeysEvent].
extension ApiKeysEventPatterns on ApiKeysEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ApiKeySecretCreated value)?  keyCreated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ApiKeySecretCreated() when keyCreated != null:
return keyCreated(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ApiKeySecretCreated value)  keyCreated,}){
final _that = this;
switch (_that) {
case ApiKeySecretCreated():
return keyCreated(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ApiKeySecretCreated value)?  keyCreated,}){
final _that = this;
switch (_that) {
case ApiKeySecretCreated() when keyCreated != null:
return keyCreated(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String key)?  keyCreated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ApiKeySecretCreated() when keyCreated != null:
return keyCreated(_that.key);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String key)  keyCreated,}) {final _that = this;
switch (_that) {
case ApiKeySecretCreated():
return keyCreated(_that.key);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String key)?  keyCreated,}) {final _that = this;
switch (_that) {
case ApiKeySecretCreated() when keyCreated != null:
return keyCreated(_that.key);case _:
  return null;

}
}

}

/// @nodoc


class ApiKeySecretCreated implements ApiKeysEvent {
  const ApiKeySecretCreated(this.key);
  

@override final  String key;

/// Create a copy of ApiKeysEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiKeySecretCreatedCopyWith<ApiKeySecretCreated> get copyWith => _$ApiKeySecretCreatedCopyWithImpl<ApiKeySecretCreated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiKeySecretCreated&&(identical(other.key, key) || other.key == key));
}


@override
int get hashCode => Object.hash(runtimeType,key);

@override
String toString() {
  return 'ApiKeysEvent.keyCreated(key: $key)';
}


}

/// @nodoc
abstract mixin class $ApiKeySecretCreatedCopyWith<$Res> implements $ApiKeysEventCopyWith<$Res> {
  factory $ApiKeySecretCreatedCopyWith(ApiKeySecretCreated value, $Res Function(ApiKeySecretCreated) _then) = _$ApiKeySecretCreatedCopyWithImpl;
@override @useResult
$Res call({
 String key
});




}
/// @nodoc
class _$ApiKeySecretCreatedCopyWithImpl<$Res>
    implements $ApiKeySecretCreatedCopyWith<$Res> {
  _$ApiKeySecretCreatedCopyWithImpl(this._self, this._then);

  final ApiKeySecretCreated _self;
  final $Res Function(ApiKeySecretCreated) _then;

/// Create a copy of ApiKeysEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,}) {
  return _then(ApiKeySecretCreated(
null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ApiKeysState {

 ViewStatus get status; List<ApiKeyDto> get items; String? get nextCursor; AppFailure? get failure; bool get loadingMore; bool get submitting; ApiKeysEvent? get event;
/// Create a copy of ApiKeysState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiKeysStateCopyWith<ApiKeysState> get copyWith => _$ApiKeysStateCopyWithImpl<ApiKeysState>(this as ApiKeysState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiKeysState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.loadingMore, loadingMore) || other.loadingMore == loadingMore)&&(identical(other.submitting, submitting) || other.submitting == submitting)&&(identical(other.event, event) || other.event == event));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(items),nextCursor,failure,loadingMore,submitting,event);

@override
String toString() {
  return 'ApiKeysState(status: $status, items: $items, nextCursor: $nextCursor, failure: $failure, loadingMore: $loadingMore, submitting: $submitting, event: $event)';
}


}

/// @nodoc
abstract mixin class $ApiKeysStateCopyWith<$Res>  {
  factory $ApiKeysStateCopyWith(ApiKeysState value, $Res Function(ApiKeysState) _then) = _$ApiKeysStateCopyWithImpl;
@useResult
$Res call({
 ViewStatus status, List<ApiKeyDto> items, String? nextCursor, AppFailure? failure, bool loadingMore, bool submitting, ApiKeysEvent? event
});


$AppFailureCopyWith<$Res>? get failure;$ApiKeysEventCopyWith<$Res>? get event;

}
/// @nodoc
class _$ApiKeysStateCopyWithImpl<$Res>
    implements $ApiKeysStateCopyWith<$Res> {
  _$ApiKeysStateCopyWithImpl(this._self, this._then);

  final ApiKeysState _self;
  final $Res Function(ApiKeysState) _then;

/// Create a copy of ApiKeysState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? items = null,Object? nextCursor = freezed,Object? failure = freezed,Object? loadingMore = null,Object? submitting = null,Object? event = freezed,}) {
  return _then(ApiKeysState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ViewStatus,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ApiKeyDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure?,loadingMore: null == loadingMore ? _self.loadingMore : loadingMore // ignore: cast_nullable_to_non_nullable
as bool,submitting: null == submitting ? _self.submitting : submitting // ignore: cast_nullable_to_non_nullable
as bool,event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as ApiKeysEvent?,
  ));
}
/// Create a copy of ApiKeysState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppFailureCopyWith<$Res>? get failure {
    if (_self.failure == null) {
    return null;
  }

  return $AppFailureCopyWith<$Res>(_self.failure!, (value) {
    return _then(_self.copyWith(failure: value));
  });
}/// Create a copy of ApiKeysState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiKeysEventCopyWith<$Res>? get event {
    if (_self.event == null) {
    return null;
  }

  return $ApiKeysEventCopyWith<$Res>(_self.event!, (value) {
    return _then(_self.copyWith(event: value));
  });
}
}


/// Adds pattern-matching-related methods to [ApiKeysState].
extension ApiKeysStatePatterns on ApiKeysState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApiKeysState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApiKeysState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApiKeysState value)  $default,){
final _that = this;
switch (_that) {
case _ApiKeysState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApiKeysState value)?  $default,){
final _that = this;
switch (_that) {
case _ApiKeysState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ViewStatus status,  List<ApiKeyDto> items,  String? nextCursor,  AppFailure? failure,  bool loadingMore,  bool submitting,  ApiKeysEvent? event)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApiKeysState() when $default != null:
return $default(_that.status,_that.items,_that.nextCursor,_that.failure,_that.loadingMore,_that.submitting,_that.event);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ViewStatus status,  List<ApiKeyDto> items,  String? nextCursor,  AppFailure? failure,  bool loadingMore,  bool submitting,  ApiKeysEvent? event)  $default,) {final _that = this;
switch (_that) {
case _ApiKeysState():
return $default(_that.status,_that.items,_that.nextCursor,_that.failure,_that.loadingMore,_that.submitting,_that.event);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ViewStatus status,  List<ApiKeyDto> items,  String? nextCursor,  AppFailure? failure,  bool loadingMore,  bool submitting,  ApiKeysEvent? event)?  $default,) {final _that = this;
switch (_that) {
case _ApiKeysState() when $default != null:
return $default(_that.status,_that.items,_that.nextCursor,_that.failure,_that.loadingMore,_that.submitting,_that.event);case _:
  return null;

}
}

}

/// @nodoc


class _ApiKeysState implements ApiKeysState {
  const _ApiKeysState({this.status = ViewStatus.initial,  List<ApiKeyDto> items = const [], this.nextCursor, this.failure, this.loadingMore = false, this.submitting = false, this.event}): _items = items;
  

@override@JsonKey() final  ViewStatus status;
 final  List<ApiKeyDto> _items;
@override@JsonKey() List<ApiKeyDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;
@override final  AppFailure? failure;
@override@JsonKey() final  bool loadingMore;
@override@JsonKey() final  bool submitting;
@override final  ApiKeysEvent? event;

/// Create a copy of ApiKeysState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApiKeysStateCopyWith<_ApiKeysState> get copyWith => __$ApiKeysStateCopyWithImpl<_ApiKeysState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApiKeysState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.loadingMore, loadingMore) || other.loadingMore == loadingMore)&&(identical(other.submitting, submitting) || other.submitting == submitting)&&(identical(other.event, event) || other.event == event));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_items),nextCursor,failure,loadingMore,submitting,event);

@override
String toString() {
  return 'ApiKeysState(status: $status, items: $items, nextCursor: $nextCursor, failure: $failure, loadingMore: $loadingMore, submitting: $submitting, event: $event)';
}


}

/// @nodoc
abstract mixin class _$ApiKeysStateCopyWith<$Res> implements $ApiKeysStateCopyWith<$Res> {
  factory _$ApiKeysStateCopyWith(_ApiKeysState value, $Res Function(_ApiKeysState) _then) = __$ApiKeysStateCopyWithImpl;
@override @useResult
$Res call({
 ViewStatus status, List<ApiKeyDto> items, String? nextCursor, AppFailure? failure, bool loadingMore, bool submitting, ApiKeysEvent? event
});


@override $AppFailureCopyWith<$Res>? get failure;@override $ApiKeysEventCopyWith<$Res>? get event;

}
/// @nodoc
class __$ApiKeysStateCopyWithImpl<$Res>
    implements _$ApiKeysStateCopyWith<$Res> {
  __$ApiKeysStateCopyWithImpl(this._self, this._then);

  final _ApiKeysState _self;
  final $Res Function(_ApiKeysState) _then;

/// Create a copy of ApiKeysState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? items = null,Object? nextCursor = freezed,Object? failure = freezed,Object? loadingMore = null,Object? submitting = null,Object? event = freezed,}) {
  return _then(_ApiKeysState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ViewStatus,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ApiKeyDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure?,loadingMore: null == loadingMore ? _self.loadingMore : loadingMore // ignore: cast_nullable_to_non_nullable
as bool,submitting: null == submitting ? _self.submitting : submitting // ignore: cast_nullable_to_non_nullable
as bool,event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as ApiKeysEvent?,
  ));
}

/// Create a copy of ApiKeysState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppFailureCopyWith<$Res>? get failure {
    if (_self.failure == null) {
    return null;
  }

  return $AppFailureCopyWith<$Res>(_self.failure!, (value) {
    return _then(_self.copyWith(failure: value));
  });
}/// Create a copy of ApiKeysState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ApiKeysEventCopyWith<$Res>? get event {
    if (_self.event == null) {
    return null;
  }

  return $ApiKeysEventCopyWith<$Res>(_self.event!, (value) {
    return _then(_self.copyWith(event: value));
  });
}
}

// dart format on
