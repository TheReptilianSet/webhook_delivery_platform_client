// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_key_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiKeyDto _$ApiKeyDtoFromJson(Map<String, dynamic> json) => _ApiKeyDto(
  id: json['id'] as String,
  name: json['name'] as String,
  prefix: json['prefix'] as String,
  scopes: (json['scopes'] as List<dynamic>).map((e) => e as String).toList(),
  revokedAt: json['revoked_at'] == null
      ? null
      : DateTime.parse(json['revoked_at'] as String),
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$ApiKeyDtoToJson(_ApiKeyDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'prefix': instance.prefix,
      'scopes': instance.scopes,
      'revoked_at': ?instance.revokedAt?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
    };

_ApiKeyCreatedDto _$ApiKeyCreatedDtoFromJson(Map<String, dynamic> json) =>
    _ApiKeyCreatedDto(
      id: json['id'] as String,
      name: json['name'] as String,
      prefix: json['prefix'] as String,
      scopes: (json['scopes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      revokedAt: json['revoked_at'] == null
          ? null
          : DateTime.parse(json['revoked_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      key: json['key'] as String,
    );

Map<String, dynamic> _$ApiKeyCreatedDtoToJson(_ApiKeyCreatedDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'prefix': instance.prefix,
      'scopes': instance.scopes,
      'revoked_at': ?instance.revokedAt?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'key': instance.key,
    };

_ApiKeyPageDto _$ApiKeyPageDtoFromJson(Map<String, dynamic> json) =>
    _ApiKeyPageDto(
      items: (json['items'] as List<dynamic>)
          .map((e) => ApiKeyDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextCursor: json['next_cursor'] as String?,
    );

Map<String, dynamic> _$ApiKeyPageDtoToJson(_ApiKeyPageDto instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'next_cursor': ?instance.nextCursor,
    };

_ApiKeyCreateRequestDto _$ApiKeyCreateRequestDtoFromJson(
  Map<String, dynamic> json,
) => _ApiKeyCreateRequestDto(
  name: json['name'] as String,
  scopes: (json['scopes'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$ApiKeyCreateRequestDtoToJson(
  _ApiKeyCreateRequestDto instance,
) => <String, dynamic>{'name': instance.name, 'scopes': instance.scopes};
