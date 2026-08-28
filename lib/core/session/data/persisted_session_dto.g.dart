// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persisted_session_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PersistedSessionDto _$PersistedSessionDtoFromJson(Map<String, dynamic> json) =>
    _PersistedSessionDto(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
      accessExpiresAt: DateTime.parse(json['access_expires_at'] as String),
      refreshExpiresAt: DateTime.parse(json['refresh_expires_at'] as String),
    );

Map<String, dynamic> _$PersistedSessionDtoToJson(
  _PersistedSessionDto instance,
) => <String, dynamic>{
  'access_token': instance.accessToken,
  'refresh_token': instance.refreshToken,
  'access_expires_at': instance.accessExpiresAt.toIso8601String(),
  'refresh_expires_at': instance.refreshExpiresAt.toIso8601String(),
};
