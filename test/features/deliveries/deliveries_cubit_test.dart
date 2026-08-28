import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:webhook_delivery_platform_client/core/network/app_failure.dart';
import 'package:webhook_delivery_platform_client/features/deliveries/data/delivery_dtos.dart';
import 'package:webhook_delivery_platform_client/features/deliveries/domain/deliveries_repository.dart';
import 'package:webhook_delivery_platform_client/features/deliveries/presentation/deliveries_cubit.dart';

void main() {
  test('applyFilters can clear a previously selected status', () async {
    final repository = _RecordingDeliveriesRepository();
    final cubit = DeliveriesCubit(
      repository: repository,
      organizationId: 'org-1',
    );

    await cubit.applyFilters(status: 'succeeded');
    await cubit.applyFilters();

    expect(repository.statuses, ['succeeded', null]);
    expect(cubit.state.statusFilter, isNull);
    await cubit.close();
  });
}

final class _RecordingDeliveriesRepository implements DeliveriesRepository {
  final List<String?> statuses = [];

  @override
  TaskEither<AppFailure, DeliveryPageDto> list(
    String organizationId, {
    String? endpointId,
    String? eventId,
    String? status,
    String? cursor,
  }) {
    statuses.add(status);
    return TaskEither.right(const DeliveryPageDto(items: []));
  }

  @override
  TaskEither<AppFailure, AttemptPageDto> attempts(
    String organizationId,
    String deliveryId, {
    String? cursor,
  }) => throw UnimplementedError();

  @override
  TaskEither<AppFailure, DeliveryDto> get(
    String organizationId,
    String deliveryId,
  ) => throw UnimplementedError();

  @override
  TaskEither<AppFailure, DeliveryReplayResult> replay(
    String organizationId,
    String deliveryId,
    String idempotencyKey,
  ) => throw UnimplementedError();
}
