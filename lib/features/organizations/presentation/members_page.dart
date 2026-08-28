import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/presentation/common_widgets.dart';
import '../../../core/presentation/view_status.dart';
import '../../../l10n/app_localizations.dart';
import '../data/organization_dtos.dart';
import '../domain/organization_permissions.dart';
import 'members_cubit.dart';
import 'members_state.dart';
import 'organization_cubit.dart';

final class MembersPage extends StatelessWidget {
  const MembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final canManage = context.select(
      (OrganizationCubit cubit) =>
          cubit.state.selected?.canManageMembers ?? false,
    );
    return BlocBuilder<MembersCubit, MembersState>(
      builder: (context, state) => Column(
        children: [
          PageHeader(
            title: l10n.members,
            actions: [
              IconButton(
                tooltip: l10n.refresh,
                onPressed: context.read<MembersCubit>().load,
                icon: const Icon(Icons.refresh),
              ),
              if (canManage)
                FilledButton.icon(
                  onPressed: state.submitting ? null : () => _add(context),
                  icon: const Icon(Icons.person_add),
                  label: Text(l10n.addMember),
                ),
            ],
          ),
          if (state.status != ViewStatus.failure && state.failure != null)
            InlineFailure(state.failure!),
          Expanded(
            child: switch (state.status) {
              ViewStatus.initial || ViewStatus.loading => const LoadingView(),
              ViewStatus.empty => const EmptyView(),
              ViewStatus.failure => FailureView(
                failure: state.failure!,
                onRetry: context.read<MembersCubit>().load,
              ),
              ViewStatus.success => OperationalTable(
                columns: [
                  OperationalColumn(label: l10n.email, flex: 3),
                  OperationalColumn(label: l10n.id, flex: 3),
                  OperationalColumn(label: l10n.role, flex: 2),
                  OperationalColumn(label: l10n.details),
                ],
                rows: [
                  for (final member in state.items)
                    OperationalDataRow(
                      cells: [
                        Text(
                          member.email ?? '-',
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.w700),
                        ),
                        TechnicalText(member.userId),
                        canManage && member.role != 'owner'
                            ? DropdownButton<String>(
                                value: member.role,
                                isDense: true,
                                items: [
                                  DropdownMenuItem(
                                    value: 'admin',
                                    child: Text(l10n.admin),
                                  ),
                                  DropdownMenuItem(
                                    value: 'member',
                                    child: Text(l10n.member),
                                  ),
                                ],
                                onChanged: state.submitting
                                    ? null
                                    : (role) {
                                        if (role != null) {
                                          context
                                              .read<MembersCubit>()
                                              .changeRole(member.userId, role);
                                        }
                                      },
                              )
                            : Text(_localizedRole(l10n, member.role)),
                        canManage && member.role != 'owner'
                            ? Align(
                                alignment: Alignment.centerLeft,
                                child: IconButton(
                                  tooltip: l10n.delete,
                                  onPressed: state.submitting
                                      ? null
                                      : () => _remove(context, member),
                                  icon: const Icon(
                                    Icons.person_remove_outlined,
                                  ),
                                ),
                              )
                            : const Text('-'),
                      ],
                    ),
                ],
                footer: state.nextCursor == null
                    ? null
                    : TextButton.icon(
                        onPressed: state.loadingMore
                            ? null
                            : context.read<MembersCubit>().loadMore,
                        icon: const Icon(Icons.expand_more),
                        label: Text(l10n.loadMore),
                      ),
              ),
            },
          ),
        ],
      ),
    );
  }

  Future<void> _add(BuildContext context) async {
    final l10n = AppLocalizations.of(context);
    final email = TextEditingController();
    var role = 'member';
    final result = await showDialog<({String email, String role})>(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) => AlertDialog(
          title: Text(l10n.addMember),
          content: SizedBox(
            width: 440,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: l10n.email,
                    helperText: l10n.memberAccountHint,
                  ),
                ),
                const SizedBox(height: 12),
                DropdownButtonFormField<String>(
                  initialValue: role,
                  decoration: InputDecoration(labelText: l10n.role),
                  items: [
                    DropdownMenuItem(value: 'admin', child: Text(l10n.admin)),
                    DropdownMenuItem(value: 'member', child: Text(l10n.member)),
                  ],
                  onChanged: (value) => setState(() => role = value ?? role),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(l10n.cancel),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, (
                email: email.text.trim(),
                role: role,
              )),
              child: Text(l10n.addMember),
            ),
          ],
        ),
      ),
    );
    email.dispose();
    if (result != null && result.email.isNotEmpty && context.mounted) {
      await context.read<MembersCubit>().add(result.email, result.role);
    }
  }

  Future<void> _remove(BuildContext context, MemberDto member) async {
    final confirmed = await showConfirmation(
      context,
      title: AppLocalizations.of(context).removeMemberTitle,
    );
    if (confirmed && context.mounted) {
      await context.read<MembersCubit>().remove(member.userId);
    }
  }

  String _localizedRole(AppLocalizations l10n, String role) => switch (role) {
    'owner' => l10n.owner,
    'admin' => l10n.admin,
    _ => l10n.member,
  };
}
