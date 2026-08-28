import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/presentation/view_status.dart';
import '../domain/events_repository.dart';
import 'events_state.dart';

final class EventsCubit extends Cubit<EventsState> {
  EventsCubit({
    required EventsRepository repository,
    required String organizationId,
  }) : _repository = repository,
       _organizationId = organizationId,
       super(const EventsState());

  final EventsRepository _repository;
  final String _organizationId;

  Future<void> load({String? type}) async {
    final filter = type?.trim();
    emit(
      state.copyWith(
        status: ViewStatus.loading,
        failure: null,
        typeFilter: filter?.isEmpty == true ? null : filter,
      ),
    );
    final result = await _repository
        .list(_organizationId, type: state.typeFilter)
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
        .list(_organizationId, type: state.typeFilter, cursor: cursor)
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
}

final class EventDetailCubit extends Cubit<EventDetailState> {
  EventDetailCubit({
    required EventsRepository repository,
    required String organizationId,
    required String eventId,
  }) : _repository = repository,
       _organizationId = organizationId,
       _eventId = eventId,
       super(const EventDetailState());

  final EventsRepository _repository;
  final String _organizationId;
  final String _eventId;

  Future<void> load() async {
    emit(state.copyWith(status: ViewStatus.loading, failure: null));
    final result = await _repository.get(_organizationId, _eventId).run();
    result.match(
      (failure) =>
          emit(state.copyWith(status: ViewStatus.failure, failure: failure)),
      (event) =>
          emit(EventDetailState(status: ViewStatus.success, event: event)),
    );
  }
}
