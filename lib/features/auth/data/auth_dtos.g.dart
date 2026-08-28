// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginRequestDto _$LoginRequestDtoFromJson(Map<String, dynamic> json) =>
    _LoginRequestDto(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginRequestDtoToJson(_LoginRequestDto instance) =>
    <String, dynamic>{'email': instance.email, 'password': instance.password};

_RegisterRequestDto _$RegisterRequestDtoFromJson(Map<String, dynamic> json) =>
    _RegisterRequestDto(
      email: json['email'] as String,
      password: json['password'] as String,
      organizationName: json['organization_name'] as String,
    );

Map<String, dynamic> _$RegisterRequestDtoToJson(_RegisterRequestDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'organization_name': instance.organizationName,
    };

_RefreshRequestDto _$RefreshRequestDtoFromJson(Map<String, dynamic> json) =>
    _RefreshRequestDto(refreshToken: json['refresh_token'] as String);

Map<String, dynamic> _$RefreshRequestDtoToJson(_RefreshRequestDto instance) =>
    <String, dynamic>{'refresh_token': instance.refreshToken};

_LogoutRequestDto _$LogoutRequestDtoFromJson(Map<String, dynamic> json) =>
    _LogoutRequestDto(refreshToken: json['refresh_token'] as String);

Map<String, dynamic> _$LogoutRequestDtoToJson(_LogoutRequestDto instance) =>
    <String, dynamic>{'refresh_token': instance.refreshToken};

_TokenResponseDto _$TokenResponseDtoFromJson(Map<String, dynamic> json) =>
    _TokenResponseDto(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
      tokenType: json['token_type'] as String,
      accessExpiresAt: DateTime.parse(json['access_expires_at'] as String),
      refreshExpiresAt: DateTime.parse(json['refresh_expires_at'] as String),
    );

Map<String, dynamic> _$TokenResponseDtoToJson(_TokenResponseDto instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'token_type': instance.tokenType,
      'access_expires_at': instance.accessExpiresAt.toIso8601String(),
      'refresh_expires_at': instance.refreshExpiresAt.toIso8601String(),
    };

_UserDto _$UserDtoFromJson(Map<String, dynamic> json) => _UserDto(
  id: json['id'] as String,
  email: json['email'] as String,
  active: json['active'] as bool,
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$UserDtoToJson(_UserDto instance) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'active': instance.active,
  'created_at': instance.createdAt.toIso8601String(),
};

_MembershipDto _$MembershipDtoFromJson(Map<String, dynamic> json) =>
    _MembershipDto(
      organizationId: json['organization_id'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$MembershipDtoToJson(_MembershipDto instance) =>
    <String, dynamic>{
      'organization_id': instance.organizationId,
      'role': instance.role,
    };

_MeResponseDto _$MeResponseDtoFromJson(Map<String, dynamic> json) =>
    _MeResponseDto(
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
      memberships: (json['memberships'] as List<dynamic>)
          .map((e) => MembershipDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MeResponseDtoToJson(_MeResponseDto instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'memberships': instance.memberships.map((e) => e.toJson()).toList(),
    };

_RegistrationResponseDto _$RegistrationResponseDtoFromJson(
  Map<String, dynamic> json,
) => _RegistrationResponseDto(
  user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
  organization: Map<String, String>.from(json['organization'] as Map),
  membership: Map<String, String>.from(json['membership'] as Map),
);

Map<String, dynamic> _$RegistrationResponseDtoToJson(
  _RegistrationResponseDto instance,
) => <String, dynamic>{
  'user': instance.user.toJson(),
  'organization': instance.organization,
  'membership': instance.membership,
};
