import 'package:freezed_annotation/freezed_annotation.dart';

part 'endpoint_dtos.freezed.dart';
part 'endpoint_dtos.g.dart';

@freezed
abstract class EndpointDto with _$EndpointDto {
  const factory EndpointDto({
    required String id,
    required String name,
    required String url,
    required String status,
    required bool enabled,
    required List<String> eventTypes,
    required DateTime createdAt,
  }) = _EndpointDto;

  factory EndpointDto.fromJson(Map<String, dynamic> json) =>
      _$EndpointDtoFromJson(json);
}

@freezed
abstract class EndpointCreatedDto with _$EndpointCreatedDto {
  const factory EndpointCreatedDto({
    required String id,
    required String name,
    required String url,
    required String status,
    required bool enabled,
    required List<String> eventTypes,
    required DateTime createdAt,
    required String signingSecret,
  }) = _EndpointCreatedDto;

  factory EndpointCreatedDto.fromJson(Map<String, dynamic> json) =>
      _$EndpointCreatedDtoFromJson(json);
}

@freezed
abstract class EndpointPageDto with _$EndpointPageDto {
  const factory EndpointPageDto({
    required List<EndpointDto> items,
    String? nextCursor,
  }) = _EndpointPageDto;

  factory EndpointPageDto.fromJson(Map<String, dynamic> json) =>
      _$EndpointPageDtoFromJson(json);
}

@freezed
abstract class EndpointCreateRequestDto with _$EndpointCreateRequestDto {
  const factory EndpointCreateRequestDto({
    required String name,
    required String url,
    required List<String> eventTypes,
  }) = _EndpointCreateRequestDto;

  factory EndpointCreateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$EndpointCreateRequestDtoFromJson(json);
}

@freezed
abstract class EndpointUpdateRequestDto with _$EndpointUpdateRequestDto {
  const factory EndpointUpdateRequestDto({
    String? name,
    String? url,
    List<String>? eventTypes,
    bool? enabled,
  }) = _EndpointUpdateRequestDto;

  factory EndpointUpdateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$EndpointUpdateRequestDtoFromJson(json);
}
