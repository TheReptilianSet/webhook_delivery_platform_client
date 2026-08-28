// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'members_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MembersState {

 ViewStatus get status; List<MemberDto> get items; String? get nextCursor; AppFailure? get failure; bool get loadingMore; bool get submitting;
/// Create a copy of MembersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MembersStateCopyWith<MembersState> get copyWith => _$MembersStateCopyWithImpl<MembersState>(this as MembersState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MembersState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.loadingMore, loadingMore) || other.loadingMore == loadingMore)&&(identical(other.submitting, submitting) || other.submitting == submitting));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(items),nextCursor,failure,loadingMore,submitting);

@override
String toString() {
  return 'MembersState(status: $status, items: $items, nextCursor: $nextCursor, failure: $failure, loadingMore: $loadingMore, submitting: $submitting)';
}


}

/// @nodoc
abstract mixin class $MembersStateCopyWith<$Res>  {
  factory $MembersStateCopyWith(MembersState value, $Res Function(MembersState) _then) = _$MembersStateCopyWithImpl;
@useResult
$Res call({
 ViewStatus status, List<MemberDto> items, String? nextCursor, AppFailure? failure, bool loadingMore, bool submitting
});


$AppFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class _$MembersStateCopyWithImpl<$Res>
    implements $MembersStateCopyWith<$Res> {
  _$MembersStateCopyWithImpl(this._self, this._then);

  final MembersState _self;
  final $Res Function(MembersState) _then;

/// Create a copy of MembersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? items = null,Object? nextCursor = freezed,Object? failure = freezed,Object? loadingMore = null,Object? submitting = null,}) {
  return _then(MembersState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ViewStatus,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<MemberDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure?,loadingMore: null == loadingMore ? _self.loadingMore : loadingMore // ignore: cast_nullable_to_non_nullable
as bool,submitting: null == submitting ? _self.submitting : submitting // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of MembersState
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


/// Adds pattern-matching-related methods to [MembersState].
extension MembersStatePatterns on MembersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MembersState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MembersState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MembersState value)  $default,){
final _that = this;
switch (_that) {
case _MembersState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MembersState value)?  $default,){
final _that = this;
switch (_that) {
case _MembersState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ViewStatus status,  List<MemberDto> items,  String? nextCursor,  AppFailure? failure,  bool loadingMore,  bool submitting)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MembersState() when $default != null:
return $default(_that.status,_that.items,_that.nextCursor,_that.failure,_that.loadingMore,_that.submitting);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ViewStatus status,  List<MemberDto> items,  String? nextCursor,  AppFailure? failure,  bool loadingMore,  bool submitting)  $default,) {final _that = this;
switch (_that) {
case _MembersState():
return $default(_that.status,_that.items,_that.nextCursor,_that.failure,_that.loadingMore,_that.submitting);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ViewStatus status,  List<MemberDto> items,  String? nextCursor,  AppFailure? failure,  bool loadingMore,  bool submitting)?  $default,) {final _that = this;
switch (_that) {
case _MembersState() when $default != null:
return $default(_that.status,_that.items,_that.nextCursor,_that.failure,_that.loadingMore,_that.submitting);case _:
  return null;

}
}

}

/// @nodoc


class _MembersState implements MembersState {
  const _MembersState({this.status = ViewStatus.initial,  List<MemberDto> items = const [], this.nextCursor, this.failure, this.loadingMore = false, this.submitting = false}): _items = items;
  

@override@JsonKey() final  ViewStatus status;
 final  List<MemberDto> _items;
@override@JsonKey() List<MemberDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;
@override final  AppFailure? failure;
@override@JsonKey() final  bool loadingMore;
@override@JsonKey() final  bool submitting;

/// Create a copy of MembersState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MembersStateCopyWith<_MembersState> get copyWith => __$MembersStateCopyWithImpl<_MembersState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MembersState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.loadingMore, loadingMore) || other.loadingMore == loadingMore)&&(identical(other.submitting, submitting) || other.submitting == submitting));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_items),nextCursor,failure,loadingMore,submitting);

@override
String toString() {
  return 'MembersState(status: $status, items: $items, nextCursor: $nextCursor, failure: $failure, loadingMore: $loadingMore, submitting: $submitting)';
}


}

/// @nodoc
abstract mixin class _$MembersStateCopyWith<$Res> implements $MembersStateCopyWith<$Res> {
  factory _$MembersStateCopyWith(_MembersState value, $Res Function(_MembersState) _then) = __$MembersStateCopyWithImpl;
@override @useResult
$Res call({
 ViewStatus status, List<MemberDto> items, String? nextCursor, AppFailure? failure, bool loadingMore, bool submitting
});


@override $AppFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class __$MembersStateCopyWithImpl<$Res>
    implements _$MembersStateCopyWith<$Res> {
  __$MembersStateCopyWithImpl(this._self, this._then);

  final _MembersState _self;
  final $Res Function(_MembersState) _then;

/// Create a copy of MembersState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? items = null,Object? nextCursor = freezed,Object? failure = freezed,Object? loadingMore = null,Object? submitting = null,}) {
  return _then(_MembersState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ViewStatus,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<MemberDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure?,loadingMore: null == loadingMore ? _self.loadingMore : loadingMore // ignore: cast_nullable_to_non_nullable
as bool,submitting: null == submitting ? _self.submitting : submitting // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of MembersState
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
