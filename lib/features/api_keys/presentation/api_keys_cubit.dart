import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/presentation/view_status.dart';
import '../domain/api_keys_repository.dart';
import 'api_keys_state.dart';

final class ApiKeysCubit extends Cubit<ApiKeysState> {
  ApiKeysCubit({
    required ApiKeysRepository repository,
    required String organizationId,
  }) : _repository = repository,
       _organizationId = organizationId,
       super(const ApiKeysState());

  final ApiKeysRepository _repository;
  final String _organizationId;

  Future<void> load() async {
    emit(state.copyWith(status: ViewStatus.loading, failure: null));
    final result = await _repository.list(_organizationId).run();
    result.match(
      (failure) =>
          emit(state.copyWith(status: ViewStatus.failure, failure: failure)),
      (page) => emit(
        ApiKeysState(
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

  Future<void> create(String name) async {
    if (state.submitting) return;
    emit(state.copyWith(submitting: true, failure: null, event: null));
    final result = await _repository.create(_organizationId, name).run();
    await result.match(
      (failure) async =>
          emit(state.copyWith(submitting: false, failure: failure)),
      (created) async => _reload(event: ApiKeysEvent.keyCreated(created.key)),
    );
  }

  Future<void> revoke(String keyId) async {
    if (state.submitting) return;
    emit(state.copyWith(submitting: true, failure: null, event: null));
    final result = await _repository.revoke(_organizationId, keyId).run();
    await result.match(
      (failure) async =>
          emit(state.copyWith(submitting: false, failure: failure)),
      (_) async => _reload(),
    );
  }

  Future<void> _reload({ApiKeysEvent? event}) async {
    final result = await _repository.list(_organizationId).run();
    result.match(
      (failure) => emit(state.copyWith(submitting: false, failure: failure)),
      (page) => emit(
        ApiKeysState(
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
