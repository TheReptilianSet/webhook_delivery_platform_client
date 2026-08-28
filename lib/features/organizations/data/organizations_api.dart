import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'organization_dtos.dart';

part 'organizations_api.g.dart';

@RestApi()
abstract class OrganizationsApi {
  factory OrganizationsApi(Dio dio, {String? baseUrl}) = _OrganizationsApi;

  @GET('/api/v1/organizations')
  Future<OrganizationPageDto> listOrganizations({
    @Query('cursor') String? cursor,
    @Query('limit') int limit = 50,
  });

  @GET('/api/v1/organizations/{organizationId}')
  Future<OrganizationDto> getOrganization(
    @Path('organizationId') String organizationId,
  );

  @GET('/api/v1/organizations/{organizationId}/members')
  Future<MemberPageDto> listMembers(
    @Path('organizationId') String organizationId, {
    @Query('cursor') String? cursor,
    @Query('limit') int limit = 50,
  });

  @POST('/api/v1/organizations/{organizationId}/members')
  Future<MemberDto> addMember(
    @Path('organizationId') String organizationId,
    @Body() MemberCreateRequestDto request,
  );

  @PATCH('/api/v1/organizations/{organizationId}/members/{userId}')
  Future<MemberDto> updateMember(
    @Path('organizationId') String organizationId,
    @Path('userId') String userId,
    @Body() MemberUpdateRequestDto request,
  );

  @DELETE('/api/v1/organizations/{organizationId}/members/{userId}')
  Future<void> deleteMember(
    @Path('organizationId') String organizationId,
    @Path('userId') String userId,
  );
}
