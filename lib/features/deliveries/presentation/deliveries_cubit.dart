import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/presentation/view_status.dart';
import '../domain/deliveries_repository.dart';
import 'deliveries_state.dart';

final class DeliveriesCubit extends Cubit<DeliveriesState> {
  DeliveriesCubit({
    required DeliveriesRepository repository,
    required String organizationId,
    String? initialEventId,
  }) : _repository = repository,
       _organizationId = organizationId,
       super(DeliveriesState(eventIdFilter: initialEventId));

  final DeliveriesRepository _repository;
  final String _organizationId;

  Future<void> load() => _load(
    status: state.statusFilter,
    endpointId: state.endpointIdFilter,
    eventId: state.eventIdFilter,
  );

  Future<void> applyFilters({
    String? status,
    String? endpointId,
    String? eventId,
  }) => _load(status: status, endpointId: endpointId, eventId: eventId);

  Future<void> _load({
    String? status,
    String? endpointId,
    String? eventId,
  }) async {
    final statusFilter = _normalized(status);
    final endpointFilter = _normalized(endpointId);
    final eventFilter = _normalized(eventId);
    emit(
      state.copyWith(
        status: ViewStatus.loading,
        failure: null,
        statusFilter: statusFilter,
        endpointIdFilter: endpointFilter,
        eventIdFilter: eventFilter,
      ),
    );
    final result = await _repository
        .list(
          _organizationId,
          status: statusFilter,
          endpointId: endpointFilter,
          eventId: eventFilter,
        )
        .run();
    result.match(
      (failure) =>
          emit(state.copyWith(status: ViewStatus.failure, failure: failure)),
      (page) => emit(
        state.copyWith(
          status: page.items.isEmpty ? ViewStatus.empty : ViewStatus.success,
          items: page.items,
          nextCursor: page.nextCursor,
        ),
      ),
    );
  }

  Future<void> loadMore() async {
    final cursor = state.nextCursor;
    if (cursor == null || state.loadingMore) return;
    emit(state.copyWith(loadingMore: true, failure: null));
    final result = await _repository
        .list(
          _organizationId,
          status: state.statusFilter,
          endpointId: state.endpointIdFilter,
          eventId: state.eventIdFilter,
          cursor: cursor,
        )
        .run();
    result.match(
      (failure) => emit(state.copyWith(loadingMore: false, failure: failure)),
      (page) => emit(
        state.copyWith(
          status: ViewStatus.success,
          items: [...state.items, ...page.items],
          nextCursor: page.nextCursor,
          loadingMore: false,
        ),
      ),
    );
  }

  String? _normalized(String? value) {
    final trimmed = value?.trim();
    return trimmed == null || trimmed.isEmpty ? null : trimmed;
  }
}
