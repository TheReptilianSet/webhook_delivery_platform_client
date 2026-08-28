// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deliveries_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeliveriesState {

 ViewStatus get status; List<DeliveryDto> get items; String? get nextCursor; String? get statusFilter; String? get endpointIdFilter; String? get eventIdFilter; AppFailure? get failure; bool get loadingMore;
/// Create a copy of DeliveriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveriesStateCopyWith<DeliveriesState> get copyWith => _$DeliveriesStateCopyWithImpl<DeliveriesState>(this as DeliveriesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveriesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.statusFilter, statusFilter) || other.statusFilter == statusFilter)&&(identical(other.endpointIdFilter, endpointIdFilter) || other.endpointIdFilter == endpointIdFilter)&&(identical(other.eventIdFilter, eventIdFilter) || other.eventIdFilter == eventIdFilter)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.loadingMore, loadingMore) || other.loadingMore == loadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(items),nextCursor,statusFilter,endpointIdFilter,eventIdFilter,failure,loadingMore);

@override
String toString() {
  return 'DeliveriesState(status: $status, items: $items, nextCursor: $nextCursor, statusFilter: $statusFilter, endpointIdFilter: $endpointIdFilter, eventIdFilter: $eventIdFilter, failure: $failure, loadingMore: $loadingMore)';
}


}

/// @nodoc
abstract mixin class $DeliveriesStateCopyWith<$Res>  {
  factory $DeliveriesStateCopyWith(DeliveriesState value, $Res Function(DeliveriesState) _then) = _$DeliveriesStateCopyWithImpl;
@useResult
$Res call({
 ViewStatus status, List<DeliveryDto> items, String? nextCursor, String? statusFilter, String? endpointIdFilter, String? eventIdFilter, AppFailure? failure, bool loadingMore
});


$AppFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class _$DeliveriesStateCopyWithImpl<$Res>
    implements $DeliveriesStateCopyWith<$Res> {
  _$DeliveriesStateCopyWithImpl(this._self, this._then);

  final DeliveriesState _self;
  final $Res Function(DeliveriesState) _then;

/// Create a copy of DeliveriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? items = null,Object? nextCursor = freezed,Object? statusFilter = freezed,Object? endpointIdFilter = freezed,Object? eventIdFilter = freezed,Object? failure = freezed,Object? loadingMore = null,}) {
  return _then(DeliveriesState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ViewStatus,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<DeliveryDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,statusFilter: freezed == statusFilter ? _self.statusFilter : statusFilter // ignore: cast_nullable_to_non_nullable
as String?,endpointIdFilter: freezed == endpointIdFilter ? _self.endpointIdFilter : endpointIdFilter // ignore: cast_nullable_to_non_nullable
as String?,eventIdFilter: freezed == eventIdFilter ? _self.eventIdFilter : eventIdFilter // ignore: cast_nullable_to_non_nullable
as String?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure?,loadingMore: null == loadingMore ? _self.loadingMore : loadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of DeliveriesState
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


/// Adds pattern-matching-related methods to [DeliveriesState].
extension DeliveriesStatePatterns on DeliveriesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveriesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveriesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveriesState value)  $default,){
final _that = this;
switch (_that) {
case _DeliveriesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveriesState value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveriesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ViewStatus status,  List<DeliveryDto> items,  String? nextCursor,  String? statusFilter,  String? endpointIdFilter,  String? eventIdFilter,  AppFailure? failure,  bool loadingMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveriesState() when $default != null:
return $default(_that.status,_that.items,_that.nextCursor,_that.statusFilter,_that.endpointIdFilter,_that.eventIdFilter,_that.failure,_that.loadingMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ViewStatus status,  List<DeliveryDto> items,  String? nextCursor,  String? statusFilter,  String? endpointIdFilter,  String? eventIdFilter,  AppFailure? failure,  bool loadingMore)  $default,) {final _that = this;
switch (_that) {
case _DeliveriesState():
return $default(_that.status,_that.items,_that.nextCursor,_that.statusFilter,_that.endpointIdFilter,_that.eventIdFilter,_that.failure,_that.loadingMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ViewStatus status,  List<DeliveryDto> items,  String? nextCursor,  String? statusFilter,  String? endpointIdFilter,  String? eventIdFilter,  AppFailure? failure,  bool loadingMore)?  $default,) {final _that = this;
switch (_that) {
case _DeliveriesState() when $default != null:
return $default(_that.status,_that.items,_that.nextCursor,_that.statusFilter,_that.endpointIdFilter,_that.eventIdFilter,_that.failure,_that.loadingMore);case _:
  return null;

}
}

}

/// @nodoc


class _DeliveriesState implements DeliveriesState {
  const _DeliveriesState({this.status = ViewStatus.initial,  List<DeliveryDto> items = const [], this.nextCursor, this.statusFilter, this.endpointIdFilter, this.eventIdFilter, this.failure, this.loadingMore = false}): _items = items;
  

@override@JsonKey() final  ViewStatus status;
 final  List<DeliveryDto> _items;
@override@JsonKey() List<DeliveryDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;
@override final  String? statusFilter;
@override final  String? endpointIdFilter;
@override final  String? eventIdFilter;
@override final  AppFailure? failure;
@override@JsonKey() final  bool loadingMore;

/// Create a copy of DeliveriesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveriesStateCopyWith<_DeliveriesState> get copyWith => __$DeliveriesStateCopyWithImpl<_DeliveriesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveriesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.statusFilter, statusFilter) || other.statusFilter == statusFilter)&&(identical(other.endpointIdFilter, endpointIdFilter) || other.endpointIdFilter == endpointIdFilter)&&(identical(other.eventIdFilter, eventIdFilter) || other.eventIdFilter == eventIdFilter)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.loadingMore, loadingMore) || other.loadingMore == loadingMore));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_items),nextCursor,statusFilter,endpointIdFilter,eventIdFilter,failure,loadingMore);

@override
String toString() {
  return 'DeliveriesState(status: $status, items: $items, nextCursor: $nextCursor, statusFilter: $statusFilter, endpointIdFilter: $endpointIdFilter, eventIdFilter: $eventIdFilter, failure: $failure, loadingMore: $loadingMore)';
}


}

/// @nodoc
abstract mixin class _$DeliveriesStateCopyWith<$Res> implements $DeliveriesStateCopyWith<$Res> {
  factory _$DeliveriesStateCopyWith(_DeliveriesState value, $Res Function(_DeliveriesState) _then) = __$DeliveriesStateCopyWithImpl;
@override @useResult
$Res call({
 ViewStatus status, List<DeliveryDto> items, String? nextCursor, String? statusFilter, String? endpointIdFilter, String? eventIdFilter, AppFailure? failure, bool loadingMore
});


@override $AppFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class __$DeliveriesStateCopyWithImpl<$Res>
    implements _$DeliveriesStateCopyWith<$Res> {
  __$DeliveriesStateCopyWithImpl(this._self, this._then);

  final _DeliveriesState _self;
  final $Res Function(_DeliveriesState) _then;

/// Create a copy of DeliveriesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? items = null,Object? nextCursor = freezed,Object? statusFilter = freezed,Object? endpointIdFilter = freezed,Object? eventIdFilter = freezed,Object? failure = freezed,Object? loadingMore = null,}) {
  return _then(_DeliveriesState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ViewStatus,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<DeliveryDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,statusFilter: freezed == statusFilter ? _self.statusFilter : statusFilter // ignore: cast_nullable_to_non_nullable
as String?,endpointIdFilter: freezed == endpointIdFilter ? _self.endpointIdFilter : endpointIdFilter // ignore: cast_nullable_to_non_nullable
as String?,eventIdFilter: freezed == eventIdFilter ? _self.eventIdFilter : eventIdFilter // ignore: cast_nullable_to_non_nullable
as String?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure?,loadingMore: null == loadingMore ? _self.loadingMore : loadingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of DeliveriesState
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
mixin _$DeliveryDetailState {

 ViewStatus get status; DeliveryDto? get delivery; List<AttemptDto> get attempts; AppFailure? get failure; bool get submitting; DeliveryReplayResult? get replayResult;
/// Create a copy of DeliveryDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryDetailStateCopyWith<DeliveryDetailState> get copyWith => _$DeliveryDetailStateCopyWithImpl<DeliveryDetailState>(this as DeliveryDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryDetailState&&(identical(other.status, status) || other.status == status)&&(identical(other.delivery, delivery) || other.delivery == delivery)&&const DeepCollectionEquality().equals(other.attempts, attempts)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.submitting, submitting) || other.submitting == submitting)&&(identical(other.replayResult, replayResult) || other.replayResult == replayResult));
}


@override
int get hashCode => Object.hash(runtimeType,status,delivery,const DeepCollectionEquality().hash(attempts),failure,submitting,replayResult);

@override
String toString() {
  return 'DeliveryDetailState(status: $status, delivery: $delivery, attempts: $attempts, failure: $failure, submitting: $submitting, replayResult: $replayResult)';
}


}

/// @nodoc
abstract mixin class $DeliveryDetailStateCopyWith<$Res>  {
  factory $DeliveryDetailStateCopyWith(DeliveryDetailState value, $Res Function(DeliveryDetailState) _then) = _$DeliveryDetailStateCopyWithImpl;
@useResult
$Res call({
 ViewStatus status, DeliveryDto? delivery, List<AttemptDto> attempts, AppFailure? failure, bool submitting, DeliveryReplayResult? replayResult
});


$DeliveryDtoCopyWith<$Res>? get delivery;$AppFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class _$DeliveryDetailStateCopyWithImpl<$Res>
    implements $DeliveryDetailStateCopyWith<$Res> {
  _$DeliveryDetailStateCopyWithImpl(this._self, this._then);

  final DeliveryDetailState _self;
  final $Res Function(DeliveryDetailState) _then;

/// Create a copy of DeliveryDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? delivery = freezed,Object? attempts = null,Object? failure = freezed,Object? submitting = null,Object? replayResult = freezed,}) {
  return _then(DeliveryDetailState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ViewStatus,delivery: freezed == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as DeliveryDto?,attempts: null == attempts ? _self.attempts : attempts // ignore: cast_nullable_to_non_nullable
as List<AttemptDto>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure?,submitting: null == submitting ? _self.submitting : submitting // ignore: cast_nullable_to_non_nullable
as bool,replayResult: freezed == replayResult ? _self.replayResult : replayResult // ignore: cast_nullable_to_non_nullable
as DeliveryReplayResult?,
  ));
}
/// Create a copy of DeliveryDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeliveryDtoCopyWith<$Res>? get delivery {
    if (_self.delivery == null) {
    return null;
  }

  return $DeliveryDtoCopyWith<$Res>(_self.delivery!, (value) {
    return _then(_self.copyWith(delivery: value));
  });
}/// Create a copy of DeliveryDetailState
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


/// Adds pattern-matching-related methods to [DeliveryDetailState].
extension DeliveryDetailStatePatterns on DeliveryDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryDetailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryDetailState value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryDetailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryDetailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ViewStatus status,  DeliveryDto? delivery,  List<AttemptDto> attempts,  AppFailure? failure,  bool submitting,  DeliveryReplayResult? replayResult)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryDetailState() when $default != null:
return $default(_that.status,_that.delivery,_that.attempts,_that.failure,_that.submitting,_that.replayResult);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ViewStatus status,  DeliveryDto? delivery,  List<AttemptDto> attempts,  AppFailure? failure,  bool submitting,  DeliveryReplayResult? replayResult)  $default,) {final _that = this;
switch (_that) {
case _DeliveryDetailState():
return $default(_that.status,_that.delivery,_that.attempts,_that.failure,_that.submitting,_that.replayResult);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ViewStatus status,  DeliveryDto? delivery,  List<AttemptDto> attempts,  AppFailure? failure,  bool submitting,  DeliveryReplayResult? replayResult)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryDetailState() when $default != null:
return $default(_that.status,_that.delivery,_that.attempts,_that.failure,_that.submitting,_that.replayResult);case _:
  return null;

}
}

}

/// @nodoc


class _DeliveryDetailState implements DeliveryDetailState {
  const _DeliveryDetailState({this.status = ViewStatus.initial, this.delivery,  List<AttemptDto> attempts = const [], this.failure, this.submitting = false, this.replayResult}): _attempts = attempts;
  

@override@JsonKey() final  ViewStatus status;
@override final  DeliveryDto? delivery;
 final  List<AttemptDto> _attempts;
@override@JsonKey() List<AttemptDto> get attempts {
  if (_attempts is EqualUnmodifiableListView) return _attempts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attempts);
}

@override final  AppFailure? failure;
@override@JsonKey() final  bool submitting;
@override final  DeliveryReplayResult? replayResult;

/// Create a copy of DeliveryDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryDetailStateCopyWith<_DeliveryDetailState> get copyWith => __$DeliveryDetailStateCopyWithImpl<_DeliveryDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryDetailState&&(identical(other.status, status) || other.status == status)&&(identical(other.delivery, delivery) || other.delivery == delivery)&&const DeepCollectionEquality().equals(other._attempts, _attempts)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.submitting, submitting) || other.submitting == submitting)&&(identical(other.replayResult, replayResult) || other.replayResult == replayResult));
}


@override
int get hashCode => Object.hash(runtimeType,status,delivery,const DeepCollectionEquality().hash(_attempts),failure,submitting,replayResult);

@override
String toString() {
  return 'DeliveryDetailState(status: $status, delivery: $delivery, attempts: $attempts, failure: $failure, submitting: $submitting, replayResult: $replayResult)';
}


}

/// @nodoc
abstract mixin class _$DeliveryDetailStateCopyWith<$Res> implements $DeliveryDetailStateCopyWith<$Res> {
  factory _$DeliveryDetailStateCopyWith(_DeliveryDetailState value, $Res Function(_DeliveryDetailState) _then) = __$DeliveryDetailStateCopyWithImpl;
@override @useResult
$Res call({
 ViewStatus status, DeliveryDto? delivery, List<AttemptDto> attempts, AppFailure? failure, bool submitting, DeliveryReplayResult? replayResult
});


@override $DeliveryDtoCopyWith<$Res>? get delivery;@override $AppFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class __$DeliveryDetailStateCopyWithImpl<$Res>
    implements _$DeliveryDetailStateCopyWith<$Res> {
  __$DeliveryDetailStateCopyWithImpl(this._self, this._then);

  final _DeliveryDetailState _self;
  final $Res Function(_DeliveryDetailState) _then;

/// Create a copy of DeliveryDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? delivery = freezed,Object? attempts = null,Object? failure = freezed,Object? submitting = null,Object? replayResult = freezed,}) {
  return _then(_DeliveryDetailState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ViewStatus,delivery: freezed == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as DeliveryDto?,attempts: null == attempts ? _self._attempts : attempts // ignore: cast_nullable_to_non_nullable
as List<AttemptDto>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure?,submitting: null == submitting ? _self.submitting : submitting // ignore: cast_nullable_to_non_nullable
as bool,replayResult: freezed == replayResult ? _self.replayResult : replayResult // ignore: cast_nullable_to_non_nullable
as DeliveryReplayResult?,
  ));
}

/// Create a copy of DeliveryDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeliveryDtoCopyWith<$Res>? get delivery {
    if (_self.delivery == null) {
    return null;
  }

  return $DeliveryDtoCopyWith<$Res>(_self.delivery!, (value) {
    return _then(_self.copyWith(delivery: value));
  });
}/// Create a copy of DeliveryDetailState
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
