import 'package:fpdart/fpdart.dart';

import '../../../core/network/app_failure.dart';
import '../data/event_dtos.dart';

typedef EventSubmissionResult = ({EventAcceptedDto event, bool replayed});

abstract interface class EventsRepository {
  TaskEither<AppFailure, EventPageDto> list(
    String organizationId, {
    String? type,
    DateTime? from,
    DateTime? to,
    String? cursor,
  });

  TaskEither<AppFailure, EventDetailDto> get(
    String organizationId,
    String eventId,
  );

  TaskEither<AppFailure, EventSubmissionResult> submit({
    required String producerKey,
    required String idempotencyKey,
    required EventCreateRequestDto request,
  });
}
