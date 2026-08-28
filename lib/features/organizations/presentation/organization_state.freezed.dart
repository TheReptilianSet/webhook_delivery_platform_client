// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organization_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrganizationState {

 ViewStatus get status; List<OrganizationDto> get items; OrganizationDto? get selected; AppFailure? get failure;
/// Create a copy of OrganizationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrganizationStateCopyWith<OrganizationState> get copyWith => _$OrganizationStateCopyWithImpl<OrganizationState>(this as OrganizationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrganizationState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.selected, selected) || other.selected == selected)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(items),selected,failure);

@override
String toString() {
  return 'OrganizationState(status: $status, items: $items, selected: $selected, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $OrganizationStateCopyWith<$Res>  {
  factory $OrganizationStateCopyWith(OrganizationState value, $Res Function(OrganizationState) _then) = _$OrganizationStateCopyWithImpl;
@useResult
$Res call({
 ViewStatus status, List<OrganizationDto> items, OrganizationDto? selected, AppFailure? failure
});


$OrganizationDtoCopyWith<$Res>? get selected;$AppFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class _$OrganizationStateCopyWithImpl<$Res>
    implements $OrganizationStateCopyWith<$Res> {
  _$OrganizationStateCopyWithImpl(this._self, this._then);

  final OrganizationState _self;
  final $Res Function(OrganizationState) _then;

/// Create a copy of OrganizationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? items = null,Object? selected = freezed,Object? failure = freezed,}) {
  return _then(OrganizationState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ViewStatus,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OrganizationDto>,selected: freezed == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as OrganizationDto?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure?,
  ));
}
/// Create a copy of OrganizationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrganizationDtoCopyWith<$Res>? get selected {
    if (_self.selected == null) {
    return null;
  }

  return $OrganizationDtoCopyWith<$Res>(_self.selected!, (value) {
    return _then(_self.copyWith(selected: value));
  });
}/// Create a copy of OrganizationState
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


/// Adds pattern-matching-related methods to [OrganizationState].
extension OrganizationStatePatterns on OrganizationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrganizationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrganizationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrganizationState value)  $default,){
final _that = this;
switch (_that) {
case _OrganizationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrganizationState value)?  $default,){
final _that = this;
switch (_that) {
case _OrganizationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ViewStatus status,  List<OrganizationDto> items,  OrganizationDto? selected,  AppFailure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrganizationState() when $default != null:
return $default(_that.status,_that.items,_that.selected,_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ViewStatus status,  List<OrganizationDto> items,  OrganizationDto? selected,  AppFailure? failure)  $default,) {final _that = this;
switch (_that) {
case _OrganizationState():
return $default(_that.status,_that.items,_that.selected,_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ViewStatus status,  List<OrganizationDto> items,  OrganizationDto? selected,  AppFailure? failure)?  $default,) {final _that = this;
switch (_that) {
case _OrganizationState() when $default != null:
return $default(_that.status,_that.items,_that.selected,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _OrganizationState implements OrganizationState {
  const _OrganizationState({this.status = ViewStatus.initial,  List<OrganizationDto> items = const [], this.selected, this.failure}): _items = items;
  

@override@JsonKey() final  ViewStatus status;
 final  List<OrganizationDto> _items;
@override@JsonKey() List<OrganizationDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  OrganizationDto? selected;
@override final  AppFailure? failure;

/// Create a copy of OrganizationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrganizationStateCopyWith<_OrganizationState> get copyWith => __$OrganizationStateCopyWithImpl<_OrganizationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrganizationState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.selected, selected) || other.selected == selected)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_items),selected,failure);

@override
String toString() {
  return 'OrganizationState(status: $status, items: $items, selected: $selected, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$OrganizationStateCopyWith<$Res> implements $OrganizationStateCopyWith<$Res> {
  factory _$OrganizationStateCopyWith(_OrganizationState value, $Res Function(_OrganizationState) _then) = __$OrganizationStateCopyWithImpl;
@override @useResult
$Res call({
 ViewStatus status, List<OrganizationDto> items, OrganizationDto? selected, AppFailure? failure
});


@override $OrganizationDtoCopyWith<$Res>? get selected;@override $AppFailureCopyWith<$Res>? get failure;

}
/// @nodoc
class __$OrganizationStateCopyWithImpl<$Res>
    implements _$OrganizationStateCopyWith<$Res> {
  __$OrganizationStateCopyWithImpl(this._self, this._then);

  final _OrganizationState _self;
  final $Res Function(_OrganizationState) _then;

/// Create a copy of OrganizationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? items = null,Object? selected = freezed,Object? failure = freezed,}) {
  return _then(_OrganizationState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ViewStatus,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OrganizationDto>,selected: freezed == selected ? _self.selected : selected // ignore: cast_nullable_to_non_nullable
as OrganizationDto?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as AppFailure?,
  ));
}

/// Create a copy of OrganizationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrganizationDtoCopyWith<$Res>? get selected {
    if (_self.selected == null) {
    return null;
  }

  return $OrganizationDtoCopyWith<$Res>(_self.selected!, (value) {
    return _then(_self.copyWith(selected: value));
  });
}/// Create a copy of OrganizationState
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
