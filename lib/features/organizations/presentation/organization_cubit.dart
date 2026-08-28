import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/presentation/view_status.dart';
import '../domain/organizations_repository.dart';
import 'organization_state.dart';

final class OrganizationCubit extends Cubit<OrganizationState> {
  OrganizationCubit(this._repository) : super(const OrganizationState());

  final OrganizationsRepository _repository;

  Future<void> load() async {
    emit(state.copyWith(status: ViewStatus.loading, failure: null));
    final result = await _repository.listOrganizations().run();
    result.match(
      (failure) =>
          emit(state.copyWith(status: ViewStatus.failure, failure: failure)),
      (page) {
        final selectedId = state.selected?.id;
        final selected =
            page.items.where((item) => item.id == selectedId).firstOrNull ??
            page.items.firstOrNull;
        emit(
          OrganizationState(
            status: page.items.isEmpty ? ViewStatus.empty : ViewStatus.success,
            items: page.items,
            selected: selected,
          ),
        );
      },
    );
  }

  void select(String organizationId) {
    final selected = state.items
        .where((organization) => organization.id == organizationId)
        .firstOrNull;
    if (selected != null && selected != state.selected) {
      emit(state.copyWith(selected: selected));
    }
  }

  void clear() => emit(const OrganizationState());
}
