import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';

import '../../../core/network/app_failure.dart';
import '../../../core/presentation/view_status.dart';
import '../data/organization_dtos.dart';
import '../domain/organizations_repository.dart';
import 'members_state.dart';

final class MembersCubit extends Cubit<MembersState> {
  MembersCubit({
    required OrganizationsRepository repository,
    required String organizationId,
  }) : _repository = repository,
       _organizationId = organizationId,
       super(const MembersState());

  final OrganizationsRepository _repository;
  final String _organizationId;

  Future<void> load() async {
    emit(state.copyWith(status: ViewStatus.loading, failure: null));
    final result = await _repository.listMembers(_organizationId).run();
    result.match(
      (failure) =>
          emit(state.copyWith(status: ViewStatus.failure, failure: failure)),
      (page) => emit(
        MembersState(
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
        .listMembers(_organizationId, cursor: cursor)
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

  Future<void> add(String email, String role) => _mutate(
    () => _repository.addMember(
      _organizationId,
      MemberCreateRequestDto(email: email, role: role),
    ),
  );

  Future<void> changeRole(String userId, String role) => _mutate(
    () => _repository.updateMember(
      _organizationId,
      userId,
      MemberUpdateRequestDto(role: role),
    ),
  );

  Future<void> remove(String userId) =>
      _mutate(() => _repository.deleteMember(_organizationId, userId));

  Future<void> _mutate<T>(
    TaskEither<AppFailure, T> Function() operation,
  ) async {
    if (state.submitting) return;
    emit(state.copyWith(submitting: true, failure: null));
    final result = await operation().run();
    await result.match(
      (failure) async =>
          emit(state.copyWith(submitting: false, failure: failure)),
      (_) async => _reload(),
    );
  }

  Future<void> _reload() async {
    final result = await _repository.listMembers(_organizationId).run();
    result.match(
      (failure) => emit(state.copyWith(submitting: false, failure: failure)),
      (page) => emit(
        MembersState(
          status: page.items.isEmpty ? ViewStatus.empty : ViewStatus.success,
          items: page.items,
          nextCursor: page.nextCursor,
        ),
      ),
    );
  }
}
