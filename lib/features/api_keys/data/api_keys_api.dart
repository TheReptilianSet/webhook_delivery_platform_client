import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'api_key_dtos.dart';

part 'api_keys_api.g.dart';

@RestApi()
abstract class ApiKeysApi {
  factory ApiKeysApi(Dio dio, {String? baseUrl}) = _ApiKeysApi;

  @GET('/api/v1/organizations/{organizationId}/api-keys')
  Future<ApiKeyPageDto> listApiKeys(
    @Path('organizationId') String organizationId, {
    @Query('cursor') String? cursor,
    @Query('limit') int limit = 50,
  });

  @POST('/api/v1/organizations/{organizationId}/api-keys')
  Future<ApiKeyCreatedDto> createApiKey(
    @Path('organizationId') String organizationId,
    @Body() ApiKeyCreateRequestDto request,
  );

  @DELETE('/api/v1/organizations/{organizationId}/api-keys/{keyId}')
  Future<void> revokeApiKey(
    @Path('organizationId') String organizationId,
    @Path('keyId') String keyId,
  );
}
