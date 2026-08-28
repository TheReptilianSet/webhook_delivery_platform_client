// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EventsState {

 ViewStatus get status; List<EventDto> get items; String? get nextCursor; String? get typeFilter; AppFailure? get failure; bool get loadingMore;
/// Create a copy of EventsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventsStateCopyWith<EventsState> get copyWith => _$EventsStateCopyWithImpl<EventsState>(this as EventsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.typeFilter, typeFilter) || other.typeFilter == typeFilter)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.loadingMore, loadingMore) || other.loadingMore == loadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(items),nextCursor,typeFilter,failure,loadingMore);

@override
String toString() {
  return 'EventsState(status: $status, items: $items, nextCursor: $nextCursor, typeFilter: $typeFilter, failure: $failure, loadingMore: $loadingMore)';
}


}

/// @nodoc
abstract mixin class $EventsStateCopyWith<$Res>  {
  factory $EventsStateCopyWith(EventsState value, $Res Function(EventsState) _then) = _$EventsStateCopyWithImpl;
@useResult
$Res call({
 ViewStatus status, List<EventDto> items, String? nextCursor, String? typeFilter, AppFailure? failure, bool loadingMore
});


$AppFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class _$EventsStateCopyWithImpl<$Res>
    implements $EventsStateCopyWith<$Res> {
  _$EventsStateCopyWithImpl(this._self, this._then);

  final EventsState _self;
  final $Res Function(EventsState) _then;

/// Create a copy of EventsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? items = null,Object? nextCursor = freezed,Object? typeFilter = freezed,Object? failure = freezed,Object? loadingMore = null,}) {
  return _then(EventsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ViewStatus,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<EventDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,typeFilter: freezed == typeFilter ? _self.typeFilter : typeFilter // ignore: cast_nullable_to_non_nullable
as String?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure?,loadingMore: null == loadingMore ? _self.loadingMore : loadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of EventsState
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
}
}


/// Adds pattern-matching-related methods to [EventsState].
extension EventsStatePatterns on EventsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventsState value)  $default,){
final _that = this;
switch (_that) {
case _EventsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventsState value)?  $default,){
final _that = this;
switch (_that) {
case _EventsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ViewStatus status,  List<EventDto> items,  String? nextCursor,  String? typeFilter,  AppFailure? failure,  bool loadingMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventsState() when $default != null:
return $default(_that.status,_that.items,_that.nextCursor,_that.typeFilter,_that.failure,_that.loadingMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ViewStatus status,  List<EventDto> items,  String? nextCursor,  String? typeFilter,  AppFailure? failure,  bool loadingMore)  $default,) {final _that = this;
switch (_that) {
case _EventsState():
return $default(_that.status,_that.items,_that.nextCursor,_that.typeFilter,_that.failure,_that.loadingMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ViewStatus status,  List<EventDto> items,  String? nextCursor,  String? typeFilter,  AppFailure? failure,  bool loadingMore)?  $default,) {final _that = this;
switch (_that) {
case _EventsState() when $default != null:
return $default(_that.status,_that.items,_that.nextCursor,_that.typeFilter,_that.failure,_that.loadingMore);case _:
  return null;

}
}

}

/// @nodoc


class _EventsState implements EventsState {
  const _EventsState({this.status = ViewStatus.initial,  List<EventDto> items = const [], this.nextCursor, this.typeFilter, this.failure, this.loadingMore = false}): _items = items;
  

@override@JsonKey() final  ViewStatus status;
 final  List<EventDto> _items;
@override@JsonKey() List<EventDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;
@override final  String? typeFilter;
@override final  AppFailure? failure;
@override@JsonKey() final  bool loadingMore;

/// Create a copy of EventsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventsStateCopyWith<_EventsState> get copyWith => __$EventsStateCopyWithImpl<_EventsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.typeFilter, typeFilter) || other.typeFilter == typeFilter)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.loadingMore, loadingMore) || other.loadingMore == loadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_items),nextCursor,typeFilter,failure,loadingMore);

@override
String toString() {
  return 'EventsState(status: $status, items: $items, nextCursor: $nextCursor, typeFilter: $typeFilter, failure: $failure, loadingMore: $loadingMore)';
}


}

/// @nodoc
abstract mixin class _$EventsStateCopyWith<$Res> implements $EventsStateCopyWith<$Res> {
  factory _$EventsStateCopyWith(_EventsState value, $Res Function(_EventsState) _then) = __$EventsStateCopyWithImpl;
@override @useResult
$Res call({
 ViewStatus status, List<EventDto> items, String? nextCursor, String? typeFilter, AppFailure? failure, bool loadingMore
});


@override $AppFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class __$EventsStateCopyWithImpl<$Res>
    implements _$EventsStateCopyWith<$Res> {
  __$EventsStateCopyWithImpl(this._self, this._then);

  final _EventsState _self;
  final $Res Function(_EventsState) _then;

/// Create a copy of EventsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? items = null,Object? nextCursor = freezed,Object? typeFilter = freezed,Object? failure = freezed,Object? loadingMore = null,}) {
  return _then(_EventsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ViewStatus,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<EventDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,typeFilter: freezed == typeFilter ? _self.typeFilter : typeFilter // ignore: cast_nullable_to_non_nullable
as String?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure?,loadingMore: null == loadingMore ? _self.loadingMore : loadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of EventsState
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
}
}

/// @nodoc
mixin _$EventDetailState {

 ViewStatus get status; EventDetailDto? get event; AppFailure? get failure;
/// Create a copy of EventDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventDetailStateCopyWith<EventDetailState> get copyWith => _$EventDetailStateCopyWithImpl<EventDetailState>(this as EventDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventDetailState&&(identical(other.status, status) || other.status == status)&&(identical(other.event, event) || other.event == event)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,status,event,failure);

@override
String toString() {
  return 'EventDetailState(status: $status, event: $event, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $EventDetailStateCopyWith<$Res>  {
  factory $EventDetailStateCopyWith(EventDetailState value, $Res Function(EventDetailState) _then) = _$EventDetailStateCopyWithImpl;
@useResult
$Res call({
 ViewStatus status, EventDetailDto? event, AppFailure? failure
});


$EventDetailDtoCopyWith<$Res>? get event;$AppFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class _$EventDetailStateCopyWithImpl<$Res>
    implements $EventDetailStateCopyWith<$Res> {
  _$EventDetailStateCopyWithImpl(this._self, this._then);

  final EventDetailState _self;
  final $Res Function(EventDetailState) _then;

/// Create a copy of EventDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? event = freezed,Object? failure = freezed,}) {
  return _then(EventDetailState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ViewStatus,event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as EventDetailDto?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure?,
  ));
}
/// Create a copy of EventDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventDetailDtoCopyWith<$Res>? get event {
    if (_self.event == null) {
    return null;
  }

  return $EventDetailDtoCopyWith<$Res>(_self.event!, (value) {
    return _then(_self.copyWith(event: value));
  });
}/// Create a copy of EventDetailState
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
}
}


/// Adds pattern-matching-related methods to [EventDetailState].
extension EventDetailStatePatterns on EventDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventDetailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventDetailState value)  $default,){
final _that = this;
switch (_that) {
case _EventDetailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _EventDetailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ViewStatus status,  EventDetailDto? event,  AppFailure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventDetailState() when $default != null:
return $default(_that.status,_that.event,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ViewStatus status,  EventDetailDto? event,  AppFailure? failure)  $default,) {final _that = this;
switch (_that) {
case _EventDetailState():
return $default(_that.status,_that.event,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ViewStatus status,  EventDetailDto? event,  AppFailure? failure)?  $default,) {final _that = this;
switch (_that) {
case _EventDetailState() when $default != null:
return $default(_that.status,_that.event,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _EventDetailState implements EventDetailState {
  const _EventDetailState({this.status = ViewStatus.initial, this.event, this.failure});
  

@override@JsonKey() final  ViewStatus status;
@override final  EventDetailDto? event;
@override final  AppFailure? failure;

/// Create a copy of EventDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventDetailStateCopyWith<_EventDetailState> get copyWith => __$EventDetailStateCopyWithImpl<_EventDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventDetailState&&(identical(other.status, status) || other.status == status)&&(identical(other.event, event) || other.event == event)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,status,event,failure);

@override
String toString() {
  return 'EventDetailState(status: $status, event: $event, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$EventDetailStateCopyWith<$Res> implements $EventDetailStateCopyWith<$Res> {
  factory _$EventDetailStateCopyWith(_EventDetailState value, $Res Function(_EventDetailState) _then) = __$EventDetailStateCopyWithImpl;
@override @useResult
$Res call({
 ViewStatus status, EventDetailDto? event, AppFailure? failure
});


@override $EventDetailDtoCopyWith<$Res>? get event;@override $AppFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class __$EventDetailStateCopyWithImpl<$Res>
    implements _$EventDetailStateCopyWith<$Res> {
  __$EventDetailStateCopyWithImpl(this._self, this._then);

  final _EventDetailState _self;
  final $Res Function(_EventDetailState) _then;

/// Create a copy of EventDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? event = freezed,Object? failure = freezed,}) {
  return _then(_EventDetailState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ViewStatus,event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as EventDetailDto?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure?,
  ));
}

/// Create a copy of EventDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EventDetailDtoCopyWith<$Res>? get event {
    if (_self.event == null) {
    return null;
  }

  return $EventDetailDtoCopyWith<$Res>(_self.event!, (value) {
    return _then(_self.copyWith(event: value));
  });
}/// Create a copy of EventDetailState
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
}
}

// dart format on
