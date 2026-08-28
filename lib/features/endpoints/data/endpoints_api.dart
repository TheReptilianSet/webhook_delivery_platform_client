import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'endpoint_dtos.dart';

part 'endpoints_api.g.dart';

@RestApi()
abstract class EndpointsApi {
  factory EndpointsApi(Dio dio, {String? baseUrl}) = _EndpointsApi;

  @GET('/api/v1/organizations/{organizationId}/endpoints')
  Future<EndpointPageDto> listEndpoints(
    @Path('organizationId') String organizationId, {
    @Query('cursor') String? cursor,
    @Query('limit') int limit = 50,
  });

  @GET('/api/v1/organizations/{organizationId}/endpoints/{endpointId}')
  Future<EndpointDto> getEndpoint(
    @Path('organizationId') String organizationId,
    @Path('endpointId') String endpointId,
  );

  @POST('/api/v1/organizations/{organizationId}/endpoints')
  Future<EndpointCreatedDto> createEndpoint(
    @Path('organizationId') String organizationId,
    @Body() EndpointCreateRequestDto request,
  );

  @PATCH('/api/v1/organizations/{organizationId}/endpoints/{endpointId}')
  Future<EndpointDto> updateEndpoint(
    @Path('organizationId') String organizationId,
    @Path('endpointId') String endpointId,
    @Body() EndpointUpdateRequestDto request,
  );

  @POST('/api/v1/organizations/{organizationId}/endpoints/{endpointId}/verify')
  Future<EndpointDto> verifyEndpoint(
    @Path('organizationId') String organizationId,
    @Path('endpointId') String endpointId,
  );

  @DELETE('/api/v1/organizations/{organizationId}/endpoints/{endpointId}')
  Future<void> deleteEndpoint(
    @Path('organizationId') String organizationId,
    @Path('endpointId') String endpointId,
  );
}
