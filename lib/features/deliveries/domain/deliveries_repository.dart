import 'package:fpdart/fpdart.dart';

import '../../../core/network/app_failure.dart';
import '../data/delivery_dtos.dart';

typedef DeliveryReplayResult = ({DeliveryDto delivery, bool replayed});

abstract interface class DeliveriesRepository {
  TaskEither<AppFailure, DeliveryPageDto> list(
    String organizationId, {
    String? endpointId,
    String? eventId,
    String? status,
    String? cursor,
  });

  TaskEither<AppFailure, DeliveryDto> get(
    String organizationId,
    String deliveryId,
  );

  TaskEither<AppFailure, AttemptPageDto> attempts(
    String organizationId,
    String deliveryId, {
    String? cursor,
  });

  TaskEither<AppFailure, DeliveryReplayResult> replay(
    String organizationId,
    String deliveryId,
    String idempotencyKey,
  );
}
