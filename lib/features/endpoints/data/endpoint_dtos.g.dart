// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endpoint_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EndpointDto _$EndpointDtoFromJson(Map<String, dynamic> json) => _EndpointDto(
  id: json['id'] as String,
  name: json['name'] as String,
  url: json['url'] as String,
  status: json['status'] as String,
  enabled: json['enabled'] as bool,
  eventTypes: (json['event_types'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  createdAt: DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$EndpointDtoToJson(_EndpointDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'status': instance.status,
      'enabled': instance.enabled,
      'event_types': instance.eventTypes,
      'created_at': instance.createdAt.toIso8601String(),
    };

_EndpointCreatedDto _$EndpointCreatedDtoFromJson(Map<String, dynamic> json) =>
    _EndpointCreatedDto(
      id: json['id'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
      status: json['status'] as String,
      enabled: json['enabled'] as bool,
      eventTypes: (json['event_types'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      createdAt: DateTime.parse(json['created_at'] as String),
      signingSecret: json['signing_secret'] as String,
    );

Map<String, dynamic> _$EndpointCreatedDtoToJson(_EndpointCreatedDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'status': instance.status,
      'enabled': instance.enabled,
      'event_types': instance.eventTypes,
      'created_at': instance.createdAt.toIso8601String(),
      'signing_secret': instance.signingSecret,
    };

_EndpointPageDto _$EndpointPageDtoFromJson(Map<String, dynamic> json) =>
    _EndpointPageDto(
      items: (json['items'] as List<dynamic>)
          .map((e) => EndpointDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextCursor: json['next_cursor'] as String?,
    );

Map<String, dynamic> _$EndpointPageDtoToJson(_EndpointPageDto instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'next_cursor': ?instance.nextCursor,
    };

_EndpointCreateRequestDto _$EndpointCreateRequestDtoFromJson(
  Map<String, dynamic> json,
) => _EndpointCreateRequestDto(
  name: json['name'] as String,
  url: json['url'] as String,
  eventTypes: (json['event_types'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$EndpointCreateRequestDtoToJson(
  _EndpointCreateRequestDto instance,
) => <String, dynamic>{
  'name': instance.name,
  'url': instance.url,
  'event_types': instance.eventTypes,
};

_EndpointUpdateRequestDto _$EndpointUpdateRequestDtoFromJson(
  Map<String, dynamic> json,
) => _EndpointUpdateRequestDto(
  name: json['name'] as String?,
  url: json['url'] as String?,
  eventTypes: (json['event_types'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  enabled: json['enabled'] as bool?,
);

Map<String, dynamic> _$EndpointUpdateRequestDtoToJson(
  _EndpointUpdateRequestDto instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'url': ?instance.url,
  'event_types': ?instance.eventTypes,
  'enabled': ?instance.enabled,
};
