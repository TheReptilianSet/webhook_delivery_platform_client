// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'endpoints_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EndpointsEvent {

 String get secret;
/// Create a copy of EndpointsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EndpointsEventCopyWith<EndpointsEvent> get copyWith => _$EndpointsEventCopyWithImpl<EndpointsEvent>(this as EndpointsEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EndpointsEvent&&(identical(other.secret, secret) || other.secret == secret));
}


@override
int get hashCode => Object.hash(runtimeType,secret);

@override
String toString() {
  return 'EndpointsEvent(secret: $secret)';
}


}

/// @nodoc
abstract mixin class $EndpointsEventCopyWith<$Res>  {
  factory $EndpointsEventCopyWith(EndpointsEvent value, $Res Function(EndpointsEvent) _then) = _$EndpointsEventCopyWithImpl;
@useResult
$Res call({
 String secret
});




}
/// @nodoc
class _$EndpointsEventCopyWithImpl<$Res>
    implements $EndpointsEventCopyWith<$Res> {
  _$EndpointsEventCopyWithImpl(this._self, this._then);

  final EndpointsEvent _self;
  final $Res Function(EndpointsEvent) _then;

/// Create a copy of EndpointsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? secret = null,}) {
  return _then(EndpointsEvent.secretCreated(
null == secret ? _self.secret : secret // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EndpointsEvent].
extension EndpointsEventPatterns on EndpointsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( EndpointSecretCreated value)?  secretCreated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case EndpointSecretCreated() when secretCreated != null:
return secretCreated(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( EndpointSecretCreated value)  secretCreated,}){
final _that = this;
switch (_that) {
case EndpointSecretCreated():
return secretCreated(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( EndpointSecretCreated value)?  secretCreated,}){
final _that = this;
switch (_that) {
case EndpointSecretCreated() when secretCreated != null:
return secretCreated(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String secret)?  secretCreated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case EndpointSecretCreated() when secretCreated != null:
return secretCreated(_that.secret);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String secret)  secretCreated,}) {final _that = this;
switch (_that) {
case EndpointSecretCreated():
return secretCreated(_that.secret);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String secret)?  secretCreated,}) {final _that = this;
switch (_that) {
case EndpointSecretCreated() when secretCreated != null:
return secretCreated(_that.secret);case _:
  return null;

}
}

}

/// @nodoc


class EndpointSecretCreated implements EndpointsEvent {
  const EndpointSecretCreated(this.secret);
  

@override final  String secret;

/// Create a copy of EndpointsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EndpointSecretCreatedCopyWith<EndpointSecretCreated> get copyWith => _$EndpointSecretCreatedCopyWithImpl<EndpointSecretCreated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EndpointSecretCreated&&(identical(other.secret, secret) || other.secret == secret));
}


@override
int get hashCode => Object.hash(runtimeType,secret);

@override
String toString() {
  return 'EndpointsEvent.secretCreated(secret: $secret)';
}


}

/// @nodoc
abstract mixin class $EndpointSecretCreatedCopyWith<$Res> implements $EndpointsEventCopyWith<$Res> {
  factory $EndpointSecretCreatedCopyWith(EndpointSecretCreated value, $Res Function(EndpointSecretCreated) _then) = _$EndpointSecretCreatedCopyWithImpl;
@override @useResult
$Res call({
 String secret
});




}
/// @nodoc
class _$EndpointSecretCreatedCopyWithImpl<$Res>
    implements $EndpointSecretCreatedCopyWith<$Res> {
  _$EndpointSecretCreatedCopyWithImpl(this._self, this._then);

  final EndpointSecretCreated _self;
  final $Res Function(EndpointSecretCreated) _then;

/// Create a copy of EndpointsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? secret = null,}) {
  return _then(EndpointSecretCreated(
null == secret ? _self.secret : secret // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$EndpointsState {

 ViewStatus get status; List<EndpointDto> get items; String? get nextCursor; AppFailure? get failure; bool get loadingMore; bool get submitting; EndpointsEvent? get event;
/// Create a copy of EndpointsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EndpointsStateCopyWith<EndpointsState> get copyWith => _$EndpointsStateCopyWithImpl<EndpointsState>(this as EndpointsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EndpointsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.loadingMore, loadingMore) || other.loadingMore == loadingMore)&&(identical(other.submitting, submitting) || other.submitting == submitting)&&(identical(other.event, event) || other.event == event));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(items),nextCursor,failure,loadingMore,submitting,event);

@override
String toString() {
  return 'EndpointsState(status: $status, items: $items, nextCursor: $nextCursor, failure: $failure, loadingMore: $loadingMore, submitting: $submitting, event: $event)';
}


}

/// @nodoc
abstract mixin class $EndpointsStateCopyWith<$Res>  {
  factory $EndpointsStateCopyWith(EndpointsState value, $Res Function(EndpointsState) _then) = _$EndpointsStateCopyWithImpl;
@useResult
$Res call({
 ViewStatus status, List<EndpointDto> items, String? nextCursor, AppFailure? failure, bool loadingMore, bool submitting, EndpointsEvent? event
});


$AppFailureCopyWith<$Res>? get failure;$EndpointsEventCopyWith<$Res>? get event;

}
/// @nodoc
class _$EndpointsStateCopyWithImpl<$Res>
    implements $EndpointsStateCopyWith<$Res> {
  _$EndpointsStateCopyWithImpl(this._self, this._then);

  final EndpointsState _self;
  final $Res Function(EndpointsState) _then;

/// Create a copy of EndpointsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? items = null,Object? nextCursor = freezed,Object? failure = freezed,Object? loadingMore = null,Object? submitting = null,Object? event = freezed,}) {
  return _then(EndpointsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ViewStatus,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<EndpointDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure?,loadingMore: null == loadingMore ? _self.loadingMore : loadingMore // ignore: cast_nullable_to_non_nullable
as bool,submitting: null == submitting ? _self.submitting : submitting // ignore: cast_nullable_to_non_nullable
as bool,event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as EndpointsEvent?,
  ));
}
/// Create a copy of EndpointsState
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
}/// Create a copy of EndpointsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EndpointsEventCopyWith<$Res>? get event {
    if (_self.event == null) {
    return null;
  }

  return $EndpointsEventCopyWith<$Res>(_self.event!, (value) {
    return _then(_self.copyWith(event: value));
  });
}
}


/// Adds pattern-matching-related methods to [EndpointsState].
extension EndpointsStatePatterns on EndpointsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EndpointsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EndpointsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EndpointsState value)  $default,){
final _that = this;
switch (_that) {
case _EndpointsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EndpointsState value)?  $default,){
final _that = this;
switch (_that) {
case _EndpointsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ViewStatus status,  List<EndpointDto> items,  String? nextCursor,  AppFailure? failure,  bool loadingMore,  bool submitting,  EndpointsEvent? event)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EndpointsState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ViewStatus status,  List<EndpointDto> items,  String? nextCursor,  AppFailure? failure,  bool loadingMore,  bool submitting,  EndpointsEvent? event)  $default,) {final _that = this;
switch (_that) {
case _EndpointsState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ViewStatus status,  List<EndpointDto> items,  String? nextCursor,  AppFailure? failure,  bool loadingMore,  bool submitting,  EndpointsEvent? event)?  $default,) {final _that = this;
switch (_that) {
case _EndpointsState() when $default != null:
return $default(_that.status,_that.items,_that.nextCursor,_that.failure,_that.loadingMore,_that.submitting,_that.event);case _:
  return null;

}
}

}

/// @nodoc


class _EndpointsState implements EndpointsState {
  const _EndpointsState({this.status = ViewStatus.initial,  List<EndpointDto> items = const [], this.nextCursor, this.failure, this.loadingMore = false, this.submitting = false, this.event}): _items = items;
  

@override@JsonKey() final  ViewStatus status;
 final  List<EndpointDto> _items;
@override@JsonKey() List<EndpointDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;
@override final  AppFailure? failure;
@override@JsonKey() final  bool loadingMore;
@override@JsonKey() final  bool submitting;
@override final  EndpointsEvent? event;

/// Create a copy of EndpointsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EndpointsStateCopyWith<_EndpointsState> get copyWith => __$EndpointsStateCopyWithImpl<_EndpointsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EndpointsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.loadingMore, loadingMore) || other.loadingMore == loadingMore)&&(identical(other.submitting, submitting) || other.submitting == submitting)&&(identical(other.event, event) || other.event == event));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_items),nextCursor,failure,loadingMore,submitting,event);

@override
String toString() {
  return 'EndpointsState(status: $status, items: $items, nextCursor: $nextCursor, failure: $failure, loadingMore: $loadingMore, submitting: $submitting, event: $event)';
}


}

/// @nodoc
abstract mixin class _$EndpointsStateCopyWith<$Res> implements $EndpointsStateCopyWith<$Res> {
  factory _$EndpointsStateCopyWith(_EndpointsState value, $Res Function(_EndpointsState) _then) = __$EndpointsStateCopyWithImpl;
@override @useResult
$Res call({
 ViewStatus status, List<EndpointDto> items, String? nextCursor, AppFailure? failure, bool loadingMore, bool submitting, EndpointsEvent? event
});


@override $AppFailureCopyWith<$Res>? get failure;@override $EndpointsEventCopyWith<$Res>? get event;

}
/// @nodoc
class __$EndpointsStateCopyWithImpl<$Res>
    implements _$EndpointsStateCopyWith<$Res> {
  __$EndpointsStateCopyWithImpl(this._self, this._then);

  final _EndpointsState _self;
  final $Res Function(_EndpointsState) _then;

/// Create a copy of EndpointsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? items = null,Object? nextCursor = freezed,Object? failure = freezed,Object? loadingMore = null,Object? submitting = null,Object? event = freezed,}) {
  return _then(_EndpointsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ViewStatus,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<EndpointDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure?,loadingMore: null == loadingMore ? _self.loadingMore : loadingMore // ignore: cast_nullable_to_non_nullable
as bool,submitting: null == submitting ? _self.submitting : submitting // ignore: cast_nullable_to_non_nullable
as bool,event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as EndpointsEvent?,
  ));
}

/// Create a copy of EndpointsState
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
}/// Create a copy of EndpointsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EndpointsEventCopyWith<$Res>? get event {
    if (_self.event == null) {
    return null;
  }

  return $EndpointsEventCopyWith<$Res>(_self.event!, (value) {
    return _then(_self.copyWith(event: value));
  });
}
}

// dart format on
