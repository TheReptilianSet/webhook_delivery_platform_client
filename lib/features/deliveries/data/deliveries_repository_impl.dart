import 'package:fpdart/fpdart.dart';

import '../../../core/network/api_task.dart';
import '../../../core/network/app_failure.dart';
import '../domain/deliveries_repository.dart';
import 'deliveries_api.dart';
import 'delivery_dtos.dart';

final class DeliveriesRepositoryImpl implements DeliveriesRepository {
  const DeliveriesRepositoryImpl(this._api);

  final DeliveriesApi _api;

  @override
  TaskEither<AppFailure, DeliveryPageDto> list(
    String organizationId, {
    String? endpointId,
    String? eventId,
    String? status,
    String? cursor,
  }) => apiTask(
    () => _api.listDeliveries(
      organizationId,
      endpointId: endpointId,
      eventId: eventId,
      status: status,
      cursor: cursor,
    ),
  );

  @override
  TaskEither<AppFailure, DeliveryDto> get(
    String organizationId,
    String deliveryId,
  ) => apiTask(() => _api.getDelivery(organizationId, deliveryId));

  @override
  TaskEither<AppFailure, AttemptPageDto> attempts(
    String organizationId,
    String deliveryId, {
    String? cursor,
  }) => apiTask(
    () => _api.listAttempts(organizationId, deliveryId, cursor: cursor),
  );

  @override
  TaskEither<AppFailure, DeliveryReplayResult> replay(
    String organizationId,
    String deliveryId,
    String idempotencyKey,
  ) {
    return apiTask(
      () => _api.replayDelivery(organizationId, deliveryId, idempotencyKey),
    ).map(
      (response) => (
        delivery: response.data,
        replayed:
            response.response.headers.value('idempotency-replayed') == 'true',
      ),
    );
  }
}
