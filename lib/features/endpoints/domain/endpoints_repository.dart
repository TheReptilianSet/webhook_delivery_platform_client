import 'package:fpdart/fpdart.dart';

import '../../../core/network/app_failure.dart';
import '../data/endpoint_dtos.dart';

abstract interface class EndpointsRepository {
  TaskEither<AppFailure, EndpointPageDto> list(
    String organizationId, {
    String? cursor,
  });

  TaskEither<AppFailure, EndpointCreatedDto> create(
    String organizationId,
    EndpointCreateRequestDto request,
  );

  TaskEither<AppFailure, EndpointDto> update(
    String organizationId,
    String endpointId,
    EndpointUpdateRequestDto request,
  );

  TaskEither<AppFailure, EndpointDto> verify(
    String organizationId,
    String endpointId,
  );

  TaskEither<AppFailure, Unit> delete(String organizationId, String endpointId);
}
