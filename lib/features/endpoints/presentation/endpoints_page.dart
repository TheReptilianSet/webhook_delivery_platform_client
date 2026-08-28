import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/presentation/common_widgets.dart';
import '../../../core/presentation/date_time_l10n.dart';
import '../../../core/presentation/one_time_secret_dialog.dart';
import '../../../core/presentation/view_status.dart';
import '../../../l10n/app_localizations.dart';
import '../../organizations/domain/organization_permissions.dart';
import '../../organizations/presentation/organization_cubit.dart';
import '../data/endpoint_dtos.dart';
import 'endpoint_form_dialog.dart';
import 'endpoints_cubit.dart';
import 'endpoints_state.dart';

final class EndpointsPage extends StatelessWidget {
  const EndpointsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final canManage = context.select(
      (OrganizationCubit cubit) =>
          cubit.state.selected?.canManageEndpoints ?? false,
    );
    return BlocConsumer<EndpointsCubit, EndpointsState>(
      listenWhen: (before, after) => before.event != after.event,
      listener: (context, state) async {
        final event = state.event;
        if (event is EndpointSecretCreated) {
          await showOneTimeSecretDialog(
            context,
            title: l10n.endpointSecretTitle,
            description: l10n.endpointSecretBody,
            secret: event.secret,
          );
          if (context.mounted) context.read<EndpointsCubit>().consumeEvent();
        }
      },
      builder: (context, state) => Column(
        children: [
          PageHeader(
            title: l10n.endpoints,
            actions: [
              IconButton(
                tooltip: l10n.refresh,
                onPressed: context.read<EndpointsCubit>().load,
                icon: const Icon(Icons.refresh),
              ),
              if (canManage)
                FilledButton.icon(
                  onPressed: state.submitting ? null : () => _edit(context),
                  icon: const Icon(Icons.add),
                  label: Text(l10n.createEndpoint),
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
                onRetry: context.read<EndpointsCubit>().load,
              ),
              ViewStatus.success => OperationalTable(
                minDesktopWidth: 1040,
                columns: [
                  OperationalColumn(label: l10n.status),
                  OperationalColumn(label: l10n.name, flex: 2),
                  OperationalColumn(label: l10n.url, flex: 3),
                  OperationalColumn(label: l10n.eventTypes, flex: 2),
                  OperationalColumn(label: l10n.createdAt, flex: 2),
                  OperationalColumn(label: l10n.details),
                ],
                rows: [
                  for (final endpoint in state.items)
                    OperationalDataRow(
                      cells: [
                        StatusBadge(
                          endpoint.enabled ? endpoint.status : 'disabled',
                        ),
                        Text(
                          endpoint.name,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.w700),
                        ),
                        TechnicalText(endpoint.url),
                        Text(
                          endpoint.eventTypes.join(', '),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(endpoint.createdAt.localized(context)),
                        canManage
                            ? Align(
                                alignment: Alignment.centerLeft,
                                child: PopupMenuButton<String>(
                                  tooltip: l10n.details,
                                  onSelected: (action) =>
                                      _act(context, endpoint, action),
                                  itemBuilder: (context) => [
                                    PopupMenuItem(
                                      value: 'edit',
                                      child: Text(l10n.edit),
                                    ),
                                    PopupMenuItem(
                                      value: 'verify',
                                      child: Text(l10n.verify),
                                    ),
                                    PopupMenuItem(
                                      value: 'delete',
                                      child: Text(l10n.delete),
                                    ),
                                  ],
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
                            : context.read<EndpointsCubit>().loadMore,
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

  Future<void> _act(
    BuildContext context,
    EndpointDto endpoint,
    String action,
  ) async {
    final cubit = context.read<EndpointsCubit>();
    if (action == 'edit') {
      await _edit(context, endpoint: endpoint);
    } else if (action == 'verify') {
      await cubit.verify(endpoint.id);
    } else if (action == 'delete') {
      final l10n = AppLocalizations.of(context);
      final confirmed = await showConfirmation(
        context,
        title: l10n.deleteEndpointTitle,
        body: l10n.deleteEndpointBody,
      );
      if (confirmed && context.mounted) await cubit.delete(endpoint.id);
    }
  }

  Future<void> _edit(BuildContext context, {EndpointDto? endpoint}) async {
    final result = await showEndpointFormDialog(context, endpoint: endpoint);
    if (result == null || !context.mounted) return;
    if (endpoint == null) {
      await context.read<EndpointsCubit>().create(
        EndpointCreateRequestDto(
          name: result.name,
          url: result.url,
          eventTypes: result.eventTypes,
        ),
      );
    } else {
      await context.read<EndpointsCubit>().update(
        endpoint.id,
        EndpointUpdateRequestDto(
          name: result.name,
          url: result.url,
          eventTypes: result.eventTypes,
          enabled: result.enabled,
        ),
      );
    }
  }
}
