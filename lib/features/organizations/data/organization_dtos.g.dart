// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrganizationDto _$OrganizationDtoFromJson(Map<String, dynamic> json) =>
    _OrganizationDto(
      id: json['id'] as String,
      name: json['name'] as String,
      status: json['status'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$OrganizationDtoToJson(_OrganizationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'role': instance.role,
    };

_OrganizationPageDto _$OrganizationPageDtoFromJson(Map<String, dynamic> json) =>
    _OrganizationPageDto(
      items: (json['items'] as List<dynamic>)
          .map((e) => OrganizationDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextCursor: json['next_cursor'] as String?,
    );

Map<String, dynamic> _$OrganizationPageDtoToJson(
  _OrganizationPageDto instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'next_cursor': ?instance.nextCursor,
};

_MemberDto _$MemberDtoFromJson(Map<String, dynamic> json) => _MemberDto(
  userId: json['user_id'] as String,
  email: json['email'] as String?,
  role: json['role'] as String,
);

Map<String, dynamic> _$MemberDtoToJson(_MemberDto instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'email': ?instance.email,
      'role': instance.role,
    };

_MemberPageDto _$MemberPageDtoFromJson(Map<String, dynamic> json) =>
    _MemberPageDto(
      items: (json['items'] as List<dynamic>)
          .map((e) => MemberDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextCursor: json['next_cursor'] as String?,
    );

Map<String, dynamic> _$MemberPageDtoToJson(_MemberPageDto instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'next_cursor': ?instance.nextCursor,
    };

_MemberCreateRequestDto _$MemberCreateRequestDtoFromJson(
  Map<String, dynamic> json,
) => _MemberCreateRequestDto(
  email: json['email'] as String,
  role: json['role'] as String,
);

Map<String, dynamic> _$MemberCreateRequestDtoToJson(
  _MemberCreateRequestDto instance,
) => <String, dynamic>{'email': instance.email, 'role': instance.role};

_MemberUpdateRequestDto _$MemberUpdateRequestDtoFromJson(
  Map<String, dynamic> json,
) => _MemberUpdateRequestDto(role: json['role'] as String);

Map<String, dynamic> _$MemberUpdateRequestDtoToJson(
  _MemberUpdateRequestDto instance,
) => <String, dynamic>{'role': instance.role};
