import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'delivery_dtos.dart';

part 'deliveries_api.g.dart';

@RestApi()
abstract class DeliveriesApi {
  factory DeliveriesApi(Dio dio, {String? baseUrl}) = _DeliveriesApi;

  @GET('/api/v1/organizations/{organizationId}/deliveries')
  Future<DeliveryPageDto> listDeliveries(
    @Path('organizationId') String organizationId, {
    @Query('endpoint_id') String? endpointId,
    @Query('event_id') String? eventId,
    @Query('status') String? status,
    @Query('cursor') String? cursor,
    @Query('limit') int limit = 50,
  });

  @GET('/api/v1/organizations/{organizationId}/deliveries/{deliveryId}')
  Future<DeliveryDto> getDelivery(
    @Path('organizationId') String organizationId,
    @Path('deliveryId') String deliveryId,
  );

  @GET(
    '/api/v1/organizations/{organizationId}/deliveries/{deliveryId}/attempts',
  )
  Future<AttemptPageDto> listAttempts(
    @Path('organizationId') String organizationId,
    @Path('deliveryId') String deliveryId, {
    @Query('cursor') String? cursor,
    @Query('limit') int limit = 50,
  });

  @POST('/api/v1/organizations/{organizationId}/deliveries/{deliveryId}/replay')
  Future<HttpResponse<DeliveryDto>> replayDelivery(
    @Path('organizationId') String organizationId,
    @Path('deliveryId') String deliveryId,
    @Header('Idempotency-Key') String idempotencyKey,
  );
}
