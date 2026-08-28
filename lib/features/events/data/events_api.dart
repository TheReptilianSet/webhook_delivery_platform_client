import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'event_dtos.dart';

part 'events_api.g.dart';

@RestApi()
abstract class EventsApi {
  factory EventsApi(Dio dio, {String? baseUrl}) = _EventsApi;

  @GET('/api/v1/organizations/{organizationId}/events')
  Future<EventPageDto> listEvents(
    @Path('organizationId') String organizationId, {
    @Query('type') String? type,
    @Query('from') DateTime? from,
    @Query('to') DateTime? to,
    @Query('cursor') String? cursor,
    @Query('limit') int limit = 50,
  });

  @GET('/api/v1/organizations/{organizationId}/events/{eventId}')
  Future<EventDetailDto> getEvent(
    @Path('organizationId') String organizationId,
    @Path('eventId') String eventId,
  );
}

@RestApi()
abstract class ProducerEventsApi {
  factory ProducerEventsApi(Dio dio, {String? baseUrl}) = _ProducerEventsApi;

  @POST('/api/v1/events')
  Future<HttpResponse<EventAcceptedDto>> submitEvent(
    @Header('Authorization') String authorization,
    @Header('Idempotency-Key') String idempotencyKey,
    @Body() EventCreateRequestDto request,
  );
}
