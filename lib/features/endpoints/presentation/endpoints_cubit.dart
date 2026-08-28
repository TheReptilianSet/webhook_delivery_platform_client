import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';

import '../../../core/network/app_failure.dart';
import '../../../core/presentation/view_status.dart';
import '../data/endpoint_dtos.dart';
import '../domain/endpoints_repository.dart';
import 'endpoints_state.dart';

final class EndpointsCubit extends Cubit<EndpointsState> {
  EndpointsCubit({
    required EndpointsRepository repository,
    required String organizationId,
  }) : _repository = repository,
       _organizationId = organizationId,
       super(const EndpointsState());

  final EndpointsRepository _repository;
  final String _organizationId;

  Future<void> load() async {
    emit(state.copyWith(status: ViewStatus.loading, failure: null));
    final result = await _repository.list(_organizationId).run();
    result.match(
      (failure) =>
          emit(state.copyWith(status: ViewStatus.failure, failure: failure)),
      (page) => emit(
        EndpointsState(
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
        .list(_organizationId, cursor: cursor)
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

  Future<void> create(EndpointCreateRequestDto request) async {
    if (state.submitting) return;
    emit(state.copyWith(submitting: true, failure: null, event: null));
    final result = await _repository.create(_organizationId, request).run();
    await result.match(
      (failure) async =>
          emit(state.copyWith(submitting: false, failure: failure)),
      (created) async {
        await _reloadAfterMutation(
          event: EndpointsEvent.secretCreated(created.signingSecret),
        );
      },
    );
  }

  Future<void> update(String endpointId, EndpointUpdateRequestDto request) =>
      _mutate(() => _repository.update(_organizationId, endpointId, request));

  Future<void> verify(String endpointId) =>
      _mutate(() => _repository.verify(_organizationId, endpointId));

  Future<void> delete(String endpointId) =>
      _mutate(() => _repository.delete(_organizationId, endpointId));

  Future<void> _mutate<T>(
    TaskEither<AppFailure, T> Function() operation,
  ) async {
    if (state.submitting) return;
    emit(state.copyWith(submitting: true, failure: null, event: null));
    final result = await operation().run();
    await result.match(
      (failure) async =>
          emit(state.copyWith(submitting: false, failure: failure)),
      (_) async => _reloadAfterMutation(),
    );
  }

  Future<void> _reloadAfterMutation({EndpointsEvent? event}) async {
    final refreshed = await _repository.list(_organizationId).run();
    refreshed.match(
      (failure) => emit(state.copyWith(submitting: false, failure: failure)),
      (page) => emit(
        EndpointsState(
          status: page.items.isEmpty ? ViewStatus.empty : ViewStatus.success,
          items: page.items,
          nextCursor: page.nextCursor,
          event: event,
        ),
      ),
    );
  }

  void consumeEvent() {
    if (state.event != null) emit(state.copyWith(event: null));
  }
}
