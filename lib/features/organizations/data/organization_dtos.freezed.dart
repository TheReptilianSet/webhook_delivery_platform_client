// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organization_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrganizationDto {

 String get id; String get name; String get status; String get role;
/// Create a copy of OrganizationDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrganizationDtoCopyWith<OrganizationDto> get copyWith => _$OrganizationDtoCopyWithImpl<OrganizationDto>(this as OrganizationDto, _$identity);

  /// Serializes this OrganizationDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrganizationDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,status,role);

@override
String toString() {
  return 'OrganizationDto(id: $id, name: $name, status: $status, role: $role)';
}


}

/// @nodoc
abstract mixin class $OrganizationDtoCopyWith<$Res>  {
  factory $OrganizationDtoCopyWith(OrganizationDto value, $Res Function(OrganizationDto) _then) = _$OrganizationDtoCopyWithImpl;
@useResult
$Res call({
 String id, String name, String status, String role
});




}
/// @nodoc
class _$OrganizationDtoCopyWithImpl<$Res>
    implements $OrganizationDtoCopyWith<$Res> {
  _$OrganizationDtoCopyWithImpl(this._self, this._then);

  final OrganizationDto _self;
  final $Res Function(OrganizationDto) _then;

/// Create a copy of OrganizationDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? status = null,Object? role = null,}) {
  return _then(OrganizationDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OrganizationDto].
extension OrganizationDtoPatterns on OrganizationDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrganizationDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrganizationDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrganizationDto value)  $default,){
final _that = this;
switch (_that) {
case _OrganizationDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrganizationDto value)?  $default,){
final _that = this;
switch (_that) {
case _OrganizationDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String status,  String role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrganizationDto() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String status,  String role)  $default,) {final _that = this;
switch (_that) {
case _OrganizationDto():
return $default(_that.id,_that.name,_that.status,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String status,  String role)?  $default,) {final _that = this;
switch (_that) {
case _OrganizationDto() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrganizationDto implements OrganizationDto {
  const _OrganizationDto({required this.id, required this.name, required this.status, required this.role});
  factory _OrganizationDto.fromJson(Map<String, dynamic> json) => _$OrganizationDtoFromJson(json);

@override final  String id;
@override final  String name;
@override final  String status;
@override final  String role;

/// Create a copy of OrganizationDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrganizationDtoCopyWith<_OrganizationDto> get copyWith => __$OrganizationDtoCopyWithImpl<_OrganizationDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrganizationDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrganizationDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,status,role);

@override
String toString() {
  return 'OrganizationDto(id: $id, name: $name, status: $status, role: $role)';
}


}

/// @nodoc
abstract mixin class _$OrganizationDtoCopyWith<$Res> implements $OrganizationDtoCopyWith<$Res> {
  factory _$OrganizationDtoCopyWith(_OrganizationDto value, $Res Function(_OrganizationDto) _then) = __$OrganizationDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String status, String role
});




}
/// @nodoc
class __$OrganizationDtoCopyWithImpl<$Res>
    implements _$OrganizationDtoCopyWith<$Res> {
  __$OrganizationDtoCopyWithImpl(this._self, this._then);

  final _OrganizationDto _self;
  final $Res Function(_OrganizationDto) _then;

/// Create a copy of OrganizationDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? status = null,Object? role = null,}) {
  return _then(_OrganizationDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$OrganizationPageDto {

 List<OrganizationDto> get items; String? get nextCursor;
/// Create a copy of OrganizationPageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrganizationPageDtoCopyWith<OrganizationPageDto> get copyWith => _$OrganizationPageDtoCopyWithImpl<OrganizationPageDto>(this as OrganizationPageDto, _$identity);

  /// Serializes this OrganizationPageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrganizationPageDto&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),nextCursor);

@override
String toString() {
  return 'OrganizationPageDto(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class $OrganizationPageDtoCopyWith<$Res>  {
  factory $OrganizationPageDtoCopyWith(OrganizationPageDto value, $Res Function(OrganizationPageDto) _then) = _$OrganizationPageDtoCopyWithImpl;
@useResult
$Res call({
 List<OrganizationDto> items, String? nextCursor
});




}
/// @nodoc
class _$OrganizationPageDtoCopyWithImpl<$Res>
    implements $OrganizationPageDtoCopyWith<$Res> {
  _$OrganizationPageDtoCopyWithImpl(this._self, this._then);

  final OrganizationPageDto _self;
  final $Res Function(OrganizationPageDto) _then;

/// Create a copy of OrganizationPageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(OrganizationPageDto(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OrganizationDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrganizationPageDto].
extension OrganizationPageDtoPatterns on OrganizationPageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrganizationPageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrganizationPageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrganizationPageDto value)  $default,){
final _that = this;
switch (_that) {
case _OrganizationPageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrganizationPageDto value)?  $default,){
final _that = this;
switch (_that) {
case _OrganizationPageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<OrganizationDto> items,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrganizationPageDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<OrganizationDto> items,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _OrganizationPageDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<OrganizationDto> items,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _OrganizationPageDto() when $default != null:
return $default(_that.items,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrganizationPageDto implements OrganizationPageDto {
  const _OrganizationPageDto({required  List<OrganizationDto> items, this.nextCursor}): _items = items;
  factory _OrganizationPageDto.fromJson(Map<String, dynamic> json) => _$OrganizationPageDtoFromJson(json);

 final  List<OrganizationDto> _items;
@override List<OrganizationDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;

/// Create a copy of OrganizationPageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrganizationPageDtoCopyWith<_OrganizationPageDto> get copyWith => __$OrganizationPageDtoCopyWithImpl<_OrganizationPageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrganizationPageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrganizationPageDto&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor);

@override
String toString() {
  return 'OrganizationPageDto(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$OrganizationPageDtoCopyWith<$Res> implements $OrganizationPageDtoCopyWith<$Res> {
  factory _$OrganizationPageDtoCopyWith(_OrganizationPageDto value, $Res Function(_OrganizationPageDto) _then) = __$OrganizationPageDtoCopyWithImpl;
@override @useResult
$Res call({
 List<OrganizationDto> items, String? nextCursor
});




}
/// @nodoc
class __$OrganizationPageDtoCopyWithImpl<$Res>
    implements _$OrganizationPageDtoCopyWith<$Res> {
  __$OrganizationPageDtoCopyWithImpl(this._self, this._then);

  final _OrganizationPageDto _self;
  final $Res Function(_OrganizationPageDto) _then;

/// Create a copy of OrganizationPageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_OrganizationPageDto(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OrganizationDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MemberDto {

 String get userId; String? get email; String get role;
/// Create a copy of MemberDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberDtoCopyWith<MemberDto> get copyWith => _$MemberDtoCopyWithImpl<MemberDto>(this as MemberDto, _$identity);

  /// Serializes this MemberDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,email,role);

@override
String toString() {
  return 'MemberDto(userId: $userId, email: $email, role: $role)';
}


}

/// @nodoc
abstract mixin class $MemberDtoCopyWith<$Res>  {
  factory $MemberDtoCopyWith(MemberDto value, $Res Function(MemberDto) _then) = _$MemberDtoCopyWithImpl;
@useResult
$Res call({
 String userId, String? email, String role
});




}
/// @nodoc
class _$MemberDtoCopyWithImpl<$Res>
    implements $MemberDtoCopyWith<$Res> {
  _$MemberDtoCopyWithImpl(this._self, this._then);

  final MemberDto _self;
  final $Res Function(MemberDto) _then;

/// Create a copy of MemberDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? email = freezed,Object? role = null,}) {
  return _then(MemberDto(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MemberDto].
extension MemberDtoPatterns on MemberDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MemberDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MemberDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MemberDto value)  $default,){
final _that = this;
switch (_that) {
case _MemberDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MemberDto value)?  $default,){
final _that = this;
switch (_that) {
case _MemberDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String? email,  String role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MemberDto() when $default != null:
return $default(_that.userId,_that.email,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String? email,  String role)  $default,) {final _that = this;
switch (_that) {
case _MemberDto():
return $default(_that.userId,_that.email,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String? email,  String role)?  $default,) {final _that = this;
switch (_that) {
case _MemberDto() when $default != null:
return $default(_that.userId,_that.email,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MemberDto implements MemberDto {
  const _MemberDto({required this.userId, this.email, required this.role});
  factory _MemberDto.fromJson(Map<String, dynamic> json) => _$MemberDtoFromJson(json);

@override final  String userId;
@override final  String? email;
@override final  String role;

/// Create a copy of MemberDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberDtoCopyWith<_MemberDto> get copyWith => __$MemberDtoCopyWithImpl<_MemberDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemberDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemberDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,email,role);

@override
String toString() {
  return 'MemberDto(userId: $userId, email: $email, role: $role)';
}


}

/// @nodoc
abstract mixin class _$MemberDtoCopyWith<$Res> implements $MemberDtoCopyWith<$Res> {
  factory _$MemberDtoCopyWith(_MemberDto value, $Res Function(_MemberDto) _then) = __$MemberDtoCopyWithImpl;
@override @useResult
$Res call({
 String userId, String? email, String role
});




}
/// @nodoc
class __$MemberDtoCopyWithImpl<$Res>
    implements _$MemberDtoCopyWith<$Res> {
  __$MemberDtoCopyWithImpl(this._self, this._then);

  final _MemberDto _self;
  final $Res Function(_MemberDto) _then;

/// Create a copy of MemberDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? email = freezed,Object? role = null,}) {
  return _then(_MemberDto(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MemberPageDto {

 List<MemberDto> get items; String? get nextCursor;
/// Create a copy of MemberPageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberPageDtoCopyWith<MemberPageDto> get copyWith => _$MemberPageDtoCopyWithImpl<MemberPageDto>(this as MemberPageDto, _$identity);

  /// Serializes this MemberPageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberPageDto&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),nextCursor);

@override
String toString() {
  return 'MemberPageDto(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class $MemberPageDtoCopyWith<$Res>  {
  factory $MemberPageDtoCopyWith(MemberPageDto value, $Res Function(MemberPageDto) _then) = _$MemberPageDtoCopyWithImpl;
@useResult
$Res call({
 List<MemberDto> items, String? nextCursor
});




}
/// @nodoc
class _$MemberPageDtoCopyWithImpl<$Res>
    implements $MemberPageDtoCopyWith<$Res> {
  _$MemberPageDtoCopyWithImpl(this._self, this._then);

  final MemberPageDto _self;
  final $Res Function(MemberPageDto) _then;

/// Create a copy of MemberPageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(MemberPageDto(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<MemberDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MemberPageDto].
extension MemberPageDtoPatterns on MemberPageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MemberPageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MemberPageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MemberPageDto value)  $default,){
final _that = this;
switch (_that) {
case _MemberPageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MemberPageDto value)?  $default,){
final _that = this;
switch (_that) {
case _MemberPageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MemberDto> items,  String? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MemberPageDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MemberDto> items,  String? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _MemberPageDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MemberDto> items,  String? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _MemberPageDto() when $default != null:
return $default(_that.items,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MemberPageDto implements MemberPageDto {
  const _MemberPageDto({required  List<MemberDto> items, this.nextCursor}): _items = items;
  factory _MemberPageDto.fromJson(Map<String, dynamic> json) => _$MemberPageDtoFromJson(json);

 final  List<MemberDto> _items;
@override List<MemberDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;

/// Create a copy of MemberPageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberPageDtoCopyWith<_MemberPageDto> get copyWith => __$MemberPageDtoCopyWithImpl<_MemberPageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemberPageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemberPageDto&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor);

@override
String toString() {
  return 'MemberPageDto(items: $items, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$MemberPageDtoCopyWith<$Res> implements $MemberPageDtoCopyWith<$Res> {
  factory _$MemberPageDtoCopyWith(_MemberPageDto value, $Res Function(_MemberPageDto) _then) = __$MemberPageDtoCopyWithImpl;
@override @useResult
$Res call({
 List<MemberDto> items, String? nextCursor
});




}
/// @nodoc
class __$MemberPageDtoCopyWithImpl<$Res>
    implements _$MemberPageDtoCopyWith<$Res> {
  __$MemberPageDtoCopyWithImpl(this._self, this._then);

  final _MemberPageDto _self;
  final $Res Function(_MemberPageDto) _then;

/// Create a copy of MemberPageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,}) {
  return _then(_MemberPageDto(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<MemberDto>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MemberCreateRequestDto {

 String get email; String get role;
/// Create a copy of MemberCreateRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberCreateRequestDtoCopyWith<MemberCreateRequestDto> get copyWith => _$MemberCreateRequestDtoCopyWithImpl<MemberCreateRequestDto>(this as MemberCreateRequestDto, _$identity);

  /// Serializes this MemberCreateRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberCreateRequestDto&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,role);

@override
String toString() {
  return 'MemberCreateRequestDto(email: $email, role: $role)';
}


}

/// @nodoc
abstract mixin class $MemberCreateRequestDtoCopyWith<$Res>  {
  factory $MemberCreateRequestDtoCopyWith(MemberCreateRequestDto value, $Res Function(MemberCreateRequestDto) _then) = _$MemberCreateRequestDtoCopyWithImpl;
@useResult
$Res call({
 String email, String role
});




}
/// @nodoc
class _$MemberCreateRequestDtoCopyWithImpl<$Res>
    implements $MemberCreateRequestDtoCopyWith<$Res> {
  _$MemberCreateRequestDtoCopyWithImpl(this._self, this._then);

  final MemberCreateRequestDto _self;
  final $Res Function(MemberCreateRequestDto) _then;

/// Create a copy of MemberCreateRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? role = null,}) {
  return _then(MemberCreateRequestDto(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MemberCreateRequestDto].
extension MemberCreateRequestDtoPatterns on MemberCreateRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MemberCreateRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MemberCreateRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MemberCreateRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _MemberCreateRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MemberCreateRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _MemberCreateRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MemberCreateRequestDto() when $default != null:
return $default(_that.email,_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String role)  $default,) {final _that = this;
switch (_that) {
case _MemberCreateRequestDto():
return $default(_that.email,_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String role)?  $default,) {final _that = this;
switch (_that) {
case _MemberCreateRequestDto() when $default != null:
return $default(_that.email,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MemberCreateRequestDto implements MemberCreateRequestDto {
  const _MemberCreateRequestDto({required this.email, required this.role});
  factory _MemberCreateRequestDto.fromJson(Map<String, dynamic> json) => _$MemberCreateRequestDtoFromJson(json);

@override final  String email;
@override final  String role;

/// Create a copy of MemberCreateRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberCreateRequestDtoCopyWith<_MemberCreateRequestDto> get copyWith => __$MemberCreateRequestDtoCopyWithImpl<_MemberCreateRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemberCreateRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemberCreateRequestDto&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,role);

@override
String toString() {
  return 'MemberCreateRequestDto(email: $email, role: $role)';
}


}

/// @nodoc
abstract mixin class _$MemberCreateRequestDtoCopyWith<$Res> implements $MemberCreateRequestDtoCopyWith<$Res> {
  factory _$MemberCreateRequestDtoCopyWith(_MemberCreateRequestDto value, $Res Function(_MemberCreateRequestDto) _then) = __$MemberCreateRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String email, String role
});




}
/// @nodoc
class __$MemberCreateRequestDtoCopyWithImpl<$Res>
    implements _$MemberCreateRequestDtoCopyWith<$Res> {
  __$MemberCreateRequestDtoCopyWithImpl(this._self, this._then);

  final _MemberCreateRequestDto _self;
  final $Res Function(_MemberCreateRequestDto) _then;

/// Create a copy of MemberCreateRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? role = null,}) {
  return _then(_MemberCreateRequestDto(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MemberUpdateRequestDto {

 String get role;
/// Create a copy of MemberUpdateRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberUpdateRequestDtoCopyWith<MemberUpdateRequestDto> get copyWith => _$MemberUpdateRequestDtoCopyWithImpl<MemberUpdateRequestDto>(this as MemberUpdateRequestDto, _$identity);

  /// Serializes this MemberUpdateRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberUpdateRequestDto&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role);

@override
String toString() {
  return 'MemberUpdateRequestDto(role: $role)';
}


}

/// @nodoc
abstract mixin class $MemberUpdateRequestDtoCopyWith<$Res>  {
  factory $MemberUpdateRequestDtoCopyWith(MemberUpdateRequestDto value, $Res Function(MemberUpdateRequestDto) _then) = _$MemberUpdateRequestDtoCopyWithImpl;
@useResult
$Res call({
 String role
});




}
/// @nodoc
class _$MemberUpdateRequestDtoCopyWithImpl<$Res>
    implements $MemberUpdateRequestDtoCopyWith<$Res> {
  _$MemberUpdateRequestDtoCopyWithImpl(this._self, this._then);

  final MemberUpdateRequestDto _self;
  final $Res Function(MemberUpdateRequestDto) _then;

/// Create a copy of MemberUpdateRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = null,}) {
  return _then(MemberUpdateRequestDto(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MemberUpdateRequestDto].
extension MemberUpdateRequestDtoPatterns on MemberUpdateRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MemberUpdateRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MemberUpdateRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MemberUpdateRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _MemberUpdateRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MemberUpdateRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _MemberUpdateRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MemberUpdateRequestDto() when $default != null:
return $default(_that.role);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String role)  $default,) {final _that = this;
switch (_that) {
case _MemberUpdateRequestDto():
return $default(_that.role);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String role)?  $default,) {final _that = this;
switch (_that) {
case _MemberUpdateRequestDto() when $default != null:
return $default(_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MemberUpdateRequestDto implements MemberUpdateRequestDto {
  const _MemberUpdateRequestDto({required this.role});
  factory _MemberUpdateRequestDto.fromJson(Map<String, dynamic> json) => _$MemberUpdateRequestDtoFromJson(json);

@override final  String role;

/// Create a copy of MemberUpdateRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberUpdateRequestDtoCopyWith<_MemberUpdateRequestDto> get copyWith => __$MemberUpdateRequestDtoCopyWithImpl<_MemberUpdateRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemberUpdateRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemberUpdateRequestDto&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role);

@override
String toString() {
  return 'MemberUpdateRequestDto(role: $role)';
}


}

/// @nodoc
abstract mixin class _$MemberUpdateRequestDtoCopyWith<$Res> implements $MemberUpdateRequestDtoCopyWith<$Res> {
  factory _$MemberUpdateRequestDtoCopyWith(_MemberUpdateRequestDto value, $Res Function(_MemberUpdateRequestDto) _then) = __$MemberUpdateRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String role
});




}
/// @nodoc
class __$MemberUpdateRequestDtoCopyWithImpl<$Res>
    implements _$MemberUpdateRequestDtoCopyWith<$Res> {
  __$MemberUpdateRequestDtoCopyWithImpl(this._self, this._then);

  final _MemberUpdateRequestDto _self;
  final $Res Function(_MemberUpdateRequestDto) _then;

/// Create a copy of MemberUpdateRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = null,}) {
  return _then(_MemberUpdateRequestDto(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
