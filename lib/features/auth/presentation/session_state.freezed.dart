// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SessionState {

 SessionStatus get status; bool get submitting; MeResponseDto? get profile; AppFailure? get failure; SessionEvent? get event; String? get suggestedEmail;
/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionStateCopyWith<SessionState> get copyWith => _$SessionStateCopyWithImpl<SessionState>(this as SessionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionState&&(identical(other.status, status) || other.status == status)&&(identical(other.submitting, submitting) || other.submitting == submitting)&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.event, event) || other.event == event)&&(identical(other.suggestedEmail, suggestedEmail) || other.suggestedEmail == suggestedEmail));
}


@override
int get hashCode => Object.hash(runtimeType,status,submitting,profile,failure,event,suggestedEmail);

@override
String toString() {
  return 'SessionState(status: $status, submitting: $submitting, profile: $profile, failure: $failure, event: $event, suggestedEmail: $suggestedEmail)';
}


}

/// @nodoc
abstract mixin class $SessionStateCopyWith<$Res>  {
  factory $SessionStateCopyWith(SessionState value, $Res Function(SessionState) _then) = _$SessionStateCopyWithImpl;
@useResult
$Res call({
 SessionStatus status, bool submitting, MeResponseDto? profile, AppFailure? failure, SessionEvent? event, String? suggestedEmail
});


$MeResponseDtoCopyWith<$Res>? get profile;$AppFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class _$SessionStateCopyWithImpl<$Res>
    implements $SessionStateCopyWith<$Res> {
  _$SessionStateCopyWithImpl(this._self, this._then);

  final SessionState _self;
  final $Res Function(SessionState) _then;

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? submitting = null,Object? profile = freezed,Object? failure = freezed,Object? event = freezed,Object? suggestedEmail = freezed,}) {
  return _then(SessionState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SessionStatus,submitting: null == submitting ? _self.submitting : submitting // ignore: cast_nullable_to_non_nullable
as bool,profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as MeResponseDto?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure?,event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as SessionEvent?,suggestedEmail: freezed == suggestedEmail ? _self.suggestedEmail : suggestedEmail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeResponseDtoCopyWith<$Res>? get profile {
    if (_self.profile == null) {
    return null;
  }

  return $MeResponseDtoCopyWith<$Res>(_self.profile!, (value) {
    return _then(_self.copyWith(profile: value));
  });
}/// Create a copy of SessionState
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


/// Adds pattern-matching-related methods to [SessionState].
extension SessionStatePatterns on SessionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionState value)  $default,){
final _that = this;
switch (_that) {
case _SessionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionState value)?  $default,){
final _that = this;
switch (_that) {
case _SessionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SessionStatus status,  bool submitting,  MeResponseDto? profile,  AppFailure? failure,  SessionEvent? event,  String? suggestedEmail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionState() when $default != null:
return $default(_that.status,_that.submitting,_that.profile,_that.failure,_that.event,_that.suggestedEmail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SessionStatus status,  bool submitting,  MeResponseDto? profile,  AppFailure? failure,  SessionEvent? event,  String? suggestedEmail)  $default,) {final _that = this;
switch (_that) {
case _SessionState():
return $default(_that.status,_that.submitting,_that.profile,_that.failure,_that.event,_that.suggestedEmail);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SessionStatus status,  bool submitting,  MeResponseDto? profile,  AppFailure? failure,  SessionEvent? event,  String? suggestedEmail)?  $default,) {final _that = this;
switch (_that) {
case _SessionState() when $default != null:
return $default(_that.status,_that.submitting,_that.profile,_that.failure,_that.event,_that.suggestedEmail);case _:
  return null;

}
}

}

/// @nodoc


class _SessionState implements SessionState {
  const _SessionState({this.status = SessionStatus.restoring, this.submitting = false, this.profile, this.failure, this.event, this.suggestedEmail});
  

@override@JsonKey() final  SessionStatus status;
@override@JsonKey() final  bool submitting;
@override final  MeResponseDto? profile;
@override final  AppFailure? failure;
@override final  SessionEvent? event;
@override final  String? suggestedEmail;

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionStateCopyWith<_SessionState> get copyWith => __$SessionStateCopyWithImpl<_SessionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionState&&(identical(other.status, status) || other.status == status)&&(identical(other.submitting, submitting) || other.submitting == submitting)&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.event, event) || other.event == event)&&(identical(other.suggestedEmail, suggestedEmail) || other.suggestedEmail == suggestedEmail));
}


@override
int get hashCode => Object.hash(runtimeType,status,submitting,profile,failure,event,suggestedEmail);

@override
String toString() {
  return 'SessionState(status: $status, submitting: $submitting, profile: $profile, failure: $failure, event: $event, suggestedEmail: $suggestedEmail)';
}


}

/// @nodoc
abstract mixin class _$SessionStateCopyWith<$Res> implements $SessionStateCopyWith<$Res> {
  factory _$SessionStateCopyWith(_SessionState value, $Res Function(_SessionState) _then) = __$SessionStateCopyWithImpl;
@override @useResult
$Res call({
 SessionStatus status, bool submitting, MeResponseDto? profile, AppFailure? failure, SessionEvent? event, String? suggestedEmail
});


@override $MeResponseDtoCopyWith<$Res>? get profile;@override $AppFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class __$SessionStateCopyWithImpl<$Res>
    implements _$SessionStateCopyWith<$Res> {
  __$SessionStateCopyWithImpl(this._self, this._then);

  final _SessionState _self;
  final $Res Function(_SessionState) _then;

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? submitting = null,Object? profile = freezed,Object? failure = freezed,Object? event = freezed,Object? suggestedEmail = freezed,}) {
  return _then(_SessionState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SessionStatus,submitting: null == submitting ? _self.submitting : submitting // ignore: cast_nullable_to_non_nullable
as bool,profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as MeResponseDto?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure?,event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as SessionEvent?,suggestedEmail: freezed == suggestedEmail ? _self.suggestedEmail : suggestedEmail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MeResponseDtoCopyWith<$Res>? get profile {
    if (_self.profile == null) {
    return null;
  }

  return $MeResponseDtoCopyWith<$Res>(_self.profile!, (value) {
    return _then(_self.copyWith(profile: value));
  });
}/// Create a copy of SessionState
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
