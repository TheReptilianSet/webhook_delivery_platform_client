import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/app_router.dart';
import '../../../core/presentation/app_failure_l10n.dart';
import '../../../core/presentation/common_widgets.dart';
import '../../../core/presentation/date_time_l10n.dart';
import '../../../core/presentation/json_view.dart';
import '../../../core/presentation/view_status.dart';
import '../../../l10n/app_localizations.dart';
import '../../organizations/domain/organization_permissions.dart';
import '../../organizations/presentation/organization_cubit.dart';
import 'deliveries_cubit.dart';
import 'deliveries_state.dart';
import 'delivery_detail_cubit.dart';

final class DeliveriesPage extends StatefulWidget {
  const DeliveriesPage({required this.organizationId, super.key});

  final String organizationId;

  @override
  State<DeliveriesPage> createState() => _DeliveriesPageState();
}

class _DeliveriesPageState extends State<DeliveriesPage> {
  final _endpointController = TextEditingController();
  final _eventController = TextEditingController();
  String? _status;

  @override
  void dispose() {
    _endpointController.dispose();
    _eventController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Column(
      children: [
        PageHeader(
          title: l10n.deliveries,
          actions: [
            IconButton(
              tooltip: l10n.refresh,
              onPressed: context.read<DeliveriesCubit>().load,
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        CommandBar(
          child: Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              SizedBox(
                width: 190,
                child: DropdownButtonFormField<String?>(
                  initialValue: _status,
                  decoration: InputDecoration(labelText: l10n.status),
                  items: [
                    DropdownMenuItem(
                      value: null,
                      child: Text(l10n.allStatuses),
                    ),
                    for (final value in const [
                      'pending',
                      'retry_scheduled',
                      'succeeded',
                      'dead_lettered',
                      'cancelled',
                    ])
                      DropdownMenuItem(value: value, child: Text(value)),
                  ],
                  onChanged: (value) => setState(() => _status = value),
                ),
              ),
              SizedBox(
                width: 230,
                child: TextField(
                  controller: _endpointController,
                  decoration: InputDecoration(labelText: '${l10n.endpoint} ID'),
                ),
              ),
              SizedBox(
                width: 230,
                child: TextField(
                  controller: _eventController,
                  decoration: InputDecoration(labelText: '${l10n.event} ID'),
                ),
              ),
              IconButton.filled(
                tooltip: l10n.filters,
                onPressed: () => context.read<DeliveriesCubit>().applyFilters(
                  status: _status,
                  endpointId: _endpointController.text,
                  eventId: _eventController.text,
                ),
                icon: const Icon(Icons.filter_alt),
              ),
            ],
          ),
        ),
        Expanded(
          child: BlocBuilder<DeliveriesCubit, DeliveriesState>(
            builder: (context, state) => switch (state.status) {
              ViewStatus.initial || ViewStatus.loading => const LoadingView(),
              ViewStatus.empty => const EmptyView(),
              ViewStatus.failure => FailureView(
                failure: state.failure!,
                onRetry: context.read<DeliveriesCubit>().load,
              ),
              ViewStatus.success => OperationalTable(
                minDesktopWidth: 1120,
                columns: [
                  OperationalColumn(label: l10n.status),
                  OperationalColumn(label: l10n.id, flex: 2),
                  OperationalColumn(label: l10n.event, flex: 2),
                  OperationalColumn(label: l10n.endpoint, flex: 2),
                  OperationalColumn(label: l10n.attempts),
                  OperationalColumn(label: l10n.nextAttempt, flex: 2),
                  OperationalColumn(label: l10n.createdAt, flex: 2),
                ],
                rows: [
                  for (final item in state.items)
                    OperationalDataRow(
                      onTap: () => DeliveryDetailRoute(
                        organizationId: widget.organizationId,
                        deliveryId: item.id,
                      ).go(context),
                      cells: [
                        StatusBadge(item.status),
                        TechnicalText(item.id),
                        TechnicalText(item.eventId),
                        TechnicalText(item.endpointId),
                        Text('${item.attemptCount}'),
                        Text(item.nextAttemptAt?.localized(context) ?? '-'),
                        Text(item.createdAt.localized(context)),
                      ],
                    ),
                ],
                footer: state.nextCursor == null
                    ? null
                    : TextButton.icon(
                        onPressed: state.loadingMore
                            ? null
                            : context.read<DeliveriesCubit>().loadMore,
                        icon: const Icon(Icons.expand_more),
                        label: Text(l10n.loadMore),
                      ),
              ),
            },
          ),
        ),
      ],
    );
  }
}

final class DeliveryDetailPage extends StatelessWidget {
  const DeliveryDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final canReplay = context.select(
      (OrganizationCubit cubit) =>
          cubit.state.selected?.canReplayDeliveries ?? false,
    );
    return BlocConsumer<DeliveryDetailCubit, DeliveryDetailState>(
      listenWhen: (before, after) =>
          before.replayResult != after.replayResult ||
          before.failure != after.failure,
      listener: (context, state) {
        if (state.replayResult case final result?) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                result.replayed
                    ? l10n.replayedRequest
                    : '${l10n.delivery}: ${result.delivery.id}',
              ),
            ),
          );
          context.read<DeliveryDetailCubit>().consumeReplayResult();
        } else if (state.failure case final failure?) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(failure.localized(context))));
        }
      },
      builder: (context, state) {
        final delivery = state.delivery;
        return Column(
          children: [
            PageHeader(
              title: l10n.delivery,
              actions: [
                IconButton(
                  tooltip: l10n.refresh,
                  onPressed: context.read<DeliveryDetailCubit>().load,
                  icon: const Icon(Icons.refresh),
                ),
                if (canReplay && delivery != null)
                  FilledButton.icon(
                    onPressed: state.submitting
                        ? null
                        : () async {
                            final confirmed = await showConfirmation(
                              context,
                              title: l10n.replayDeliveryTitle,
                              body: l10n.replayDeliveryBody,
                            );
                            if (confirmed && context.mounted) {
                              await context
                                  .read<DeliveryDetailCubit>()
                                  .replay();
                            }
                          },
                    icon: const Icon(Icons.replay),
                    label: Text(l10n.replay),
                  ),
              ],
            ),
            Expanded(
              child: switch (state.status) {
                ViewStatus.initial || ViewStatus.loading => const LoadingView(),
                ViewStatus.failure when delivery == null => FailureView(
                  failure: state.failure!,
                  onRetry: context.read<DeliveryDetailCubit>().load,
                ),
                ViewStatus.empty => const EmptyView(),
                _ => ListView(
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                  children: [
                    if (delivery != null) ...[
                      _DeliveryRouteStrip(
                        eventId: delivery.eventId,
                        endpointId: delivery.endpointId,
                        attemptCount: delivery.attemptCount,
                        status: delivery.status,
                      ),
                      const SizedBox(height: 20),
                      Wrap(
                        spacing: 24,
                        runSpacing: 12,
                        children: [
                          StatusBadge(delivery.status),
                          SelectableText('${l10n.id}: ${delivery.id}'),
                          SelectableText('${l10n.event}: ${delivery.eventId}'),
                          SelectableText(
                            '${l10n.endpoint}: ${delivery.endpointId}',
                          ),
                          Text(
                            '${l10n.createdAt}: ${delivery.createdAt.localized(context)}',
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                    ],
                    Text(
                      l10n.attempts,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 8),
                    for (final attempt in state.attempts)
                      ExpansionTile(
                        title: Text(
                          '${l10n.attemptNumber} ${attempt.attemptNumber}',
                        ),
                        subtitle: Text(
                          '${attempt.outcome} · ${attempt.startedAt.localized(context)}',
                        ),
                        childrenPadding: const EdgeInsets.fromLTRB(
                          16,
                          0,
                          16,
                          16,
                        ),
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${l10n.responseStatus}: ${attempt.responseStatus ?? '-'}   '
                              '${l10n.latency}: ${attempt.latencyMs ?? '-'} ms   '
                              '${l10n.errorCode}: ${attempt.errorCode ?? '-'}',
                            ),
                          ),
                          if (attempt.retryDecision != null) ...[
                            const SizedBox(height: 8),
                            JsonView(attempt.retryDecision),
                          ],
                          if (attempt.responsePreview != null) ...[
                            const SizedBox(height: 8),
                            JsonView(attempt.responsePreview),
                          ],
                        ],
                      ),
                  ],
                ),
              },
            ),
          ],
        );
      },
    );
  }
}

final class _DeliveryRouteStrip extends StatelessWidget {
  const _DeliveryRouteStrip({
    required this.eventId,
    required this.endpointId,
    required this.attemptCount,
    required this.status,
  });

  final String eventId;
  final String endpointId;
  final int attemptCount;
  final String status;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final nodes = [
      _TraceNode(
        icon: Icons.data_object,
        color: Theme.of(context).colorScheme.primary,
        label: l10n.event,
        value: eventId,
      ),
      _TraceNode(
        icon: Icons.replay,
        color: Theme.of(context).colorScheme.tertiary,
        label: l10n.attempts,
        value: '$attemptCount',
      ),
      _TraceNode(
        icon: Icons.hub_outlined,
        color: Theme.of(context).colorScheme.secondary,
        label: l10n.endpoint,
        value: endpointId,
        status: status,
      ),
    ];
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border.all(color: Theme.of(context).colorScheme.outline),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 620) {
            return Column(
              children: [
                for (var index = 0; index < nodes.length; index++) ...[
                  nodes[index],
                  if (index != nodes.length - 1)
                    Container(width: 3, height: 22, color: _traceColor(index)),
                ],
              ],
            );
          }
          return Row(
            children: [
              for (var index = 0; index < nodes.length; index++) ...[
                Expanded(child: nodes[index]),
                if (index != nodes.length - 1)
                  Container(width: 42, height: 3, color: _traceColor(index)),
              ],
            ],
          );
        },
      ),
    );
  }

  Color _traceColor(int index) =>
      index == 0 ? const Color(0xFF3F6EF5) : const Color(0xFFE3A325);
}

final class _TraceNode extends StatelessWidget {
  const _TraceNode({
    required this.icon,
    required this.color,
    required this.label,
    required this.value,
    this.status,
  });

  final IconData icon;
  final Color color;
  final String label;
  final String value;
  final String? status;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      Container(
        width: 38,
        height: 38,
        alignment: Alignment.center,
        color: color.withValues(alpha: 0.12),
        child: Icon(icon, color: color, size: 20),
      ),
      const SizedBox(width: 11),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: Theme.of(
                context,
              ).textTheme.labelMedium?.copyWith(color: const Color(0xFF626B68)),
            ),
            const SizedBox(height: 3),
            TechnicalText(value),
            if (status != null) ...[
              const SizedBox(height: 5),
              StatusBadge(status!),
            ],
          ],
        ),
      ),
    ],
  );
}
