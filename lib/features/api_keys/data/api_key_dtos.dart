import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_key_dtos.freezed.dart';
part 'api_key_dtos.g.dart';

@freezed
abstract class ApiKeyDto with _$ApiKeyDto {
  const factory ApiKeyDto({
    required String id,
    required String name,
    required String prefix,
    required List<String> scopes,
    DateTime? revokedAt,
    required DateTime createdAt,
  }) = _ApiKeyDto;

  factory ApiKeyDto.fromJson(Map<String, dynamic> json) =>
      _$ApiKeyDtoFromJson(json);
}

@freezed
abstract class ApiKeyCreatedDto with _$ApiKeyCreatedDto {
  const factory ApiKeyCreatedDto({
    required String id,
    required String name,
    required String prefix,
    required List<String> scopes,
    DateTime? revokedAt,
    required DateTime createdAt,
    required String key,
  }) = _ApiKeyCreatedDto;

  factory ApiKeyCreatedDto.fromJson(Map<String, dynamic> json) =>
      _$ApiKeyCreatedDtoFromJson(json);
}

@freezed
abstract class ApiKeyPageDto with _$ApiKeyPageDto {
  const factory ApiKeyPageDto({
    required List<ApiKeyDto> items,
    String? nextCursor,
  }) = _ApiKeyPageDto;

  factory ApiKeyPageDto.fromJson(Map<String, dynamic> json) =>
      _$ApiKeyPageDtoFromJson(json);
}

@freezed
abstract class ApiKeyCreateRequestDto with _$ApiKeyCreateRequestDto {
  const factory ApiKeyCreateRequestDto({
    required String name,
    required List<String> scopes,
  }) = _ApiKeyCreateRequestDto;

  factory ApiKeyCreateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ApiKeyCreateRequestDtoFromJson(json);
}
