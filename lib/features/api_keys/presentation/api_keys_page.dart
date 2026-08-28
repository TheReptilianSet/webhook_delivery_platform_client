import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/presentation/common_widgets.dart';
import '../../../core/presentation/date_time_l10n.dart';
import '../../../core/presentation/one_time_secret_dialog.dart';
import '../../../core/presentation/view_status.dart';
import '../../../l10n/app_localizations.dart';
import '../../organizations/domain/organization_permissions.dart';
import '../../organizations/presentation/organization_cubit.dart';
import 'api_keys_cubit.dart';
import 'api_keys_state.dart';

final class ApiKeysPage extends StatelessWidget {
  const ApiKeysPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final canManage = context.select(
      (OrganizationCubit cubit) =>
          cubit.state.selected?.canManageApiKeys ?? false,
    );
    return BlocConsumer<ApiKeysCubit, ApiKeysState>(
      listenWhen: (before, after) => before.event != after.event,
      listener: (context, state) async {
        final event = state.event;
        if (event is ApiKeySecretCreated) {
          await showOneTimeSecretDialog(
            context,
            title: l10n.apiKeySecretTitle,
            description: l10n.apiKeySecretBody,
            secret: event.key,
          );
          if (context.mounted) context.read<ApiKeysCubit>().consumeEvent();
        }
      },
      builder: (context, state) => Column(
        children: [
          PageHeader(
            title: l10n.apiKeys,
            actions: [
              IconButton(
                tooltip: l10n.refresh,
                onPressed: context.read<ApiKeysCubit>().load,
                icon: const Icon(Icons.refresh),
              ),
              if (canManage)
                FilledButton.icon(
                  onPressed: state.submitting ? null : () => _create(context),
                  icon: const Icon(Icons.add),
                  label: Text(l10n.createApiKey),
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
                onRetry: context.read<ApiKeysCubit>().load,
              ),
              ViewStatus.success => OperationalTable(
                columns: [
                  OperationalColumn(label: l10n.status),
                  OperationalColumn(label: l10n.name, flex: 2),
                  OperationalColumn(label: l10n.prefix, flex: 2),
                  OperationalColumn(label: l10n.scope, flex: 2),
                  OperationalColumn(label: l10n.createdAt, flex: 2),
                  OperationalColumn(label: l10n.details),
                ],
                rows: [
                  for (final key in state.items)
                    OperationalDataRow(
                      cells: [
                        StatusBadge(
                          key.revokedAt == null ? 'active' : 'revoked',
                        ),
                        Text(
                          key.name,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.w700),
                        ),
                        TechnicalText(key.prefix),
                        Text(
                          key.scopes.join(', '),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(key.createdAt.localized(context)),
                        canManage && key.revokedAt == null
                            ? Align(
                                alignment: Alignment.centerLeft,
                                child: IconButton(
                                  tooltip: l10n.revoke,
                                  onPressed: state.submitting
                                      ? null
                                      : () async {
                                          final confirmed =
                                              await showConfirmation(
                                                context,
                                                title: l10n.revokeApiKeyTitle,
                                              );
                                          if (confirmed && context.mounted) {
                                            await context
                                                .read<ApiKeysCubit>()
                                                .revoke(key.id);
                                          }
                                        },
                                  icon: const Icon(Icons.block),
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
                            : context.read<ApiKeysCubit>().loadMore,
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

  Future<void> _create(BuildContext context) async {
    final l10n = AppLocalizations.of(context);
    final controller = TextEditingController();
    final name = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.createApiKey),
        content: TextField(
          controller: controller,
          autofocus: true,
          decoration: InputDecoration(labelText: l10n.name),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, controller.text.trim()),
            child: Text(l10n.create),
          ),
        ],
      ),
    );
    controller.dispose();
    if (name != null && name.isNotEmpty && context.mounted) {
      await context.read<ApiKeysCubit>().create(name);
    }
  }
}
