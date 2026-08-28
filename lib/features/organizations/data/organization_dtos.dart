import 'package:freezed_annotation/freezed_annotation.dart';

part 'organization_dtos.freezed.dart';
part 'organization_dtos.g.dart';

@freezed
abstract class OrganizationDto with _$OrganizationDto {
  const factory OrganizationDto({
    required String id,
    required String name,
    required String status,
    required String role,
  }) = _OrganizationDto;

  factory OrganizationDto.fromJson(Map<String, dynamic> json) =>
      _$OrganizationDtoFromJson(json);
}

@freezed
abstract class OrganizationPageDto with _$OrganizationPageDto {
  const factory OrganizationPageDto({
    required List<OrganizationDto> items,
    String? nextCursor,
  }) = _OrganizationPageDto;

  factory OrganizationPageDto.fromJson(Map<String, dynamic> json) =>
      _$OrganizationPageDtoFromJson(json);
}

@freezed
abstract class MemberDto with _$MemberDto {
  const factory MemberDto({
    required String userId,
    String? email,
    required String role,
  }) = _MemberDto;

  factory MemberDto.fromJson(Map<String, dynamic> json) =>
      _$MemberDtoFromJson(json);
}

@freezed
abstract class MemberPageDto with _$MemberPageDto {
  const factory MemberPageDto({
    required List<MemberDto> items,
    String? nextCursor,
  }) = _MemberPageDto;

  factory MemberPageDto.fromJson(Map<String, dynamic> json) =>
      _$MemberPageDtoFromJson(json);
}

@freezed
abstract class MemberCreateRequestDto with _$MemberCreateRequestDto {
  const factory MemberCreateRequestDto({
    required String email,
    required String role,
  }) = _MemberCreateRequestDto;

  factory MemberCreateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$MemberCreateRequestDtoFromJson(json);
}

@freezed
abstract class MemberUpdateRequestDto with _$MemberUpdateRequestDto {
  const factory MemberUpdateRequestDto({required String role}) =
      _MemberUpdateRequestDto;

  factory MemberUpdateRequestDto.fromJson(Map<String, dynamic> json) =>
      _$MemberUpdateRequestDtoFromJson(json);
}
