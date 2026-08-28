import 'package:fpdart/fpdart.dart';

import '../../../core/network/api_task.dart';
import '../../../core/network/app_failure.dart';
import '../domain/endpoints_repository.dart';
import 'endpoint_dtos.dart';
import 'endpoints_api.dart';

final class EndpointsRepositoryImpl implements EndpointsRepository {
  const EndpointsRepositoryImpl(this._api);

  final EndpointsApi _api;

  @override
  TaskEither<AppFailure, EndpointPageDto> list(
    String organizationId, {
    String? cursor,
  }) => apiTask(() => _api.listEndpoints(organizationId, cursor: cursor));

  @override
  TaskEither<AppFailure, EndpointCreatedDto> create(
    String organizationId,
    EndpointCreateRequestDto request,
  ) => apiTask(() => _api.createEndpoint(organizationId, request));

  @override
  TaskEither<AppFailure, EndpointDto> update(
    String organizationId,
    String endpointId,
    EndpointUpdateRequestDto request,
  ) => apiTask(() => _api.updateEndpoint(organizationId, endpointId, request));

  @override
  TaskEither<AppFailure, EndpointDto> verify(
    String organizationId,
    String endpointId,
  ) => apiTask(() => _api.verifyEndpoint(organizationId, endpointId));

  @override
  TaskEither<AppFailure, Unit> delete(
    String organizationId,
    String endpointId,
  ) => apiTask(
    () => _api.deleteEndpoint(organizationId, endpointId),
  ).map((_) => unit);
}
