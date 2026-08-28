// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_tester_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EventTesterState {

 bool get submitting; String? get idempotencyKey; EventSubmissionResult? get result; AppFailure? get failure;
/// Create a copy of EventTesterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventTesterStateCopyWith<EventTesterState> get copyWith => _$EventTesterStateCopyWithImpl<EventTesterState>(this as EventTesterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventTesterState&&(identical(other.submitting, submitting) || other.submitting == submitting)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&(identical(other.result, result) || other.result == result)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,submitting,idempotencyKey,result,failure);

@override
String toString() {
  return 'EventTesterState(submitting: $submitting, idempotencyKey: $idempotencyKey, result: $result, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $EventTesterStateCopyWith<$Res>  {
  factory $EventTesterStateCopyWith(EventTesterState value, $Res Function(EventTesterState) _then) = _$EventTesterStateCopyWithImpl;
@useResult
$Res call({
 bool submitting, String? idempotencyKey, EventSubmissionResult? result, AppFailure? failure
});


$AppFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class _$EventTesterStateCopyWithImpl<$Res>
    implements $EventTesterStateCopyWith<$Res> {
  _$EventTesterStateCopyWithImpl(this._self, this._then);

  final EventTesterState _self;
  final $Res Function(EventTesterState) _then;

/// Create a copy of EventTesterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? submitting = null,Object? idempotencyKey = freezed,Object? result = freezed,Object? failure = freezed,}) {
  return _then(EventTesterState(
submitting: null == submitting ? _self.submitting : submitting // ignore: cast_nullable_to_non_nullable
as bool,idempotencyKey: freezed == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String?,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as EventSubmissionResult?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure?,
  ));
}
/// Create a copy of EventTesterState
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


/// Adds pattern-matching-related methods to [EventTesterState].
extension EventTesterStatePatterns on EventTesterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventTesterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventTesterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventTesterState value)  $default,){
final _that = this;
switch (_that) {
case _EventTesterState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventTesterState value)?  $default,){
final _that = this;
switch (_that) {
case _EventTesterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool submitting,  String? idempotencyKey,  EventSubmissionResult? result,  AppFailure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventTesterState() when $default != null:
return $default(_that.submitting,_that.idempotencyKey,_that.result,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool submitting,  String? idempotencyKey,  EventSubmissionResult? result,  AppFailure? failure)  $default,) {final _that = this;
switch (_that) {
case _EventTesterState():
return $default(_that.submitting,_that.idempotencyKey,_that.result,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool submitting,  String? idempotencyKey,  EventSubmissionResult? result,  AppFailure? failure)?  $default,) {final _that = this;
switch (_that) {
case _EventTesterState() when $default != null:
return $default(_that.submitting,_that.idempotencyKey,_that.result,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _EventTesterState implements EventTesterState {
  const _EventTesterState({this.submitting = false, this.idempotencyKey, this.result, this.failure});
  

@override@JsonKey() final  bool submitting;
@override final  String? idempotencyKey;
@override final  EventSubmissionResult? result;
@override final  AppFailure? failure;

/// Create a copy of EventTesterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventTesterStateCopyWith<_EventTesterState> get copyWith => __$EventTesterStateCopyWithImpl<_EventTesterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventTesterState&&(identical(other.submitting, submitting) || other.submitting == submitting)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&(identical(other.result, result) || other.result == result)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,submitting,idempotencyKey,result,failure);

@override
String toString() {
  return 'EventTesterState(submitting: $submitting, idempotencyKey: $idempotencyKey, result: $result, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$EventTesterStateCopyWith<$Res> implements $EventTesterStateCopyWith<$Res> {
  factory _$EventTesterStateCopyWith(_EventTesterState value, $Res Function(_EventTesterState) _then) = __$EventTesterStateCopyWithImpl;
@override @useResult
$Res call({
 bool submitting, String? idempotencyKey, EventSubmissionResult? result, AppFailure? failure
});


@override $AppFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class __$EventTesterStateCopyWithImpl<$Res>
    implements _$EventTesterStateCopyWith<$Res> {
  __$EventTesterStateCopyWithImpl(this._self, this._then);

  final _EventTesterState _self;
  final $Res Function(_EventTesterState) _then;

/// Create a copy of EventTesterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? submitting = null,Object? idempotencyKey = freezed,Object? result = freezed,Object? failure = freezed,}) {
  return _then(_EventTesterState(
submitting: null == submitting ? _self.submitting : submitting // ignore: cast_nullable_to_non_nullable
as bool,idempotencyKey: freezed == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String?,result: freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as EventSubmissionResult?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure?,
  ));
}

/// Create a copy of EventTesterState
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
