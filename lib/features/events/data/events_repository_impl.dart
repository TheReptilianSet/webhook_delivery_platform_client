import 'package:fpdart/fpdart.dart';

import '../../../core/network/api_task.dart';
import '../../../core/network/app_failure.dart';
import '../domain/events_repository.dart';
import 'event_dtos.dart';
import 'events_api.dart';

final class EventsRepositoryImpl implements EventsRepository {
  const EventsRepositoryImpl({
    required EventsApi managementApi,
    required ProducerEventsApi producerApi,
  }) : _managementApi = managementApi,
       _producerApi = producerApi;

  final EventsApi _managementApi;
  final ProducerEventsApi _producerApi;

  @override
  TaskEither<AppFailure, EventPageDto> list(
    String organizationId, {
    String? type,
    DateTime? from,
    DateTime? to,
    String? cursor,
  }) => apiTask(
    () => _managementApi.listEvents(
      organizationId,
      type: type,
      from: from,
      to: to,
      cursor: cursor,
    ),
  );

  @override
  TaskEither<AppFailure, EventDetailDto> get(
    String organizationId,
    String eventId,
  ) => apiTask(() => _managementApi.getEvent(organizationId, eventId));

  @override
  TaskEither<AppFailure, EventSubmissionResult> submit({
    required String producerKey,
    required String idempotencyKey,
    required EventCreateRequestDto request,
  }) {
    return apiTask(
      () => _producerApi.submitEvent(
        'Bearer $producerKey',
        idempotencyKey,
        request,
      ),
    ).map(
      (response) => (
        event: response.data,
        replayed:
            response.response.headers.value('idempotency-replayed') == 'true',
      ),
    );
  }
}
