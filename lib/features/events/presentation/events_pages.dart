import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/app_router.dart';
import '../../../core/presentation/common_widgets.dart';
import '../../../core/presentation/date_time_l10n.dart';
import '../../../core/presentation/json_view.dart';
import '../../../core/presentation/view_status.dart';
import '../../../l10n/app_localizations.dart';
import '../data/event_dtos.dart';
import 'event_tester_cubit.dart';
import 'event_tester_state.dart';
import 'events_cubit.dart';
import 'events_state.dart';

final class EventsPage extends StatefulWidget {
  const EventsPage({required this.organizationId, super.key});

  final String organizationId;

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  final _typeController = TextEditingController();

  @override
  void dispose() {
    _typeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Column(
      children: [
        PageHeader(
          title: l10n.events,
          actions: [
            IconButton(
              tooltip: l10n.refresh,
              onPressed: context.read<EventsCubit>().load,
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        CommandBar(
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _typeController,
                  decoration: InputDecoration(labelText: l10n.type),
                  onSubmitted: (value) =>
                      context.read<EventsCubit>().load(type: value),
                ),
              ),
              const SizedBox(width: 12),
              IconButton.filled(
                tooltip: l10n.filters,
                onPressed: () => context.read<EventsCubit>().load(
                  type: _typeController.text,
                ),
                icon: const Icon(Icons.filter_alt),
              ),
            ],
          ),
        ),
        Expanded(
          child: BlocBuilder<EventsCubit, EventsState>(
            builder: (context, state) => switch (state.status) {
              ViewStatus.initial || ViewStatus.loading => const LoadingView(),
              ViewStatus.empty => const EmptyView(),
              ViewStatus.failure => FailureView(
                failure: state.failure!,
                onRetry: context.read<EventsCubit>().load,
              ),
              ViewStatus.success => OperationalTable(
                columns: [
                  OperationalColumn(label: l10n.type, flex: 2),
                  OperationalColumn(label: l10n.version),
                  OperationalColumn(label: l10n.id, flex: 3),
                  OperationalColumn(label: l10n.occurredAt, flex: 2),
                  OperationalColumn(label: l10n.createdAt, flex: 2),
                ],
                rows: [
                  for (final event in state.items)
                    OperationalDataRow(
                      onTap: () => EventDetailRoute(
                        organizationId: widget.organizationId,
                        eventId: event.id,
                      ).go(context),
                      cells: [
                        Text(
                          event.type,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.w700),
                        ),
                        TechnicalText('v${event.version}'),
                        TechnicalText(event.id),
                        Text(event.occurredAt.localized(context)),
                        Text(event.createdAt.localized(context)),
                      ],
                    ),
                ],
                footer: state.nextCursor == null
                    ? null
                    : TextButton.icon(
                        onPressed: state.loadingMore
                            ? null
                            : context.read<EventsCubit>().loadMore,
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

final class EventDetailPage extends StatelessWidget {
  const EventDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return BlocBuilder<EventDetailCubit, EventDetailState>(
      builder: (context, state) => Column(
        children: [
          PageHeader(
            title: l10n.event,
            actions: [
              IconButton(
                tooltip: l10n.refresh,
                onPressed: context.read<EventDetailCubit>().load,
                icon: const Icon(Icons.refresh),
              ),
            ],
          ),
          Expanded(
            child: switch (state.status) {
              ViewStatus.initial || ViewStatus.loading => const LoadingView(),
              ViewStatus.empty => const EmptyView(),
              ViewStatus.failure => FailureView(
                failure: state.failure!,
                onRetry: context.read<EventDetailCubit>().load,
              ),
              ViewStatus.success => ListView(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                children: [
                  SelectableText('${l10n.id}: ${state.event!.id}'),
                  const SizedBox(height: 8),
                  Text('${l10n.type}: ${state.event!.type}'),
                  Text('${l10n.version}: ${state.event!.version}'),
                  Text(
                    '${l10n.occurredAt}: ${state.event!.occurredAt.localized(context)}',
                  ),
                  const SizedBox(height: 20),
                  Text(
                    l10n.data,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  JsonView(state.event!.data),
                  const SizedBox(height: 20),
                  Text(
                    l10n.deliveries,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  JsonView(state.event!.deliverySummary),
                ],
              ),
            },
          ),
        ],
      ),
    );
  }
}

final class EventTesterPage extends StatefulWidget {
  const EventTesterPage({super.key});

  @override
  State<EventTesterPage> createState() => _EventTesterPageState();
}

class _EventTesterPageState extends State<EventTesterPage> {
  final _formKey = GlobalKey<FormState>();
  final _keyController = TextEditingController();
  final _typeController = TextEditingController(text: 'example.created');
  final _versionController = TextEditingController(text: '1');
  final _dataController = TextEditingController(
    text: '{\n  "id": "example"\n}',
  );

  @override
  void dispose() {
    _keyController.dispose();
    _typeController.dispose();
    _versionController.dispose();
    _dataController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return BlocBuilder<EventTesterCubit, EventTesterState>(
      builder: (context, state) => Column(
        children: [
          PageHeader(title: l10n.eventTester),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final composer = _buildComposer(context, state);
                final outcome = _TesterOutcome(state: state);
                if (constraints.maxWidth >= 900) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(flex: 3, child: composer),
                      const VerticalDivider(width: 1),
                      Expanded(flex: 2, child: outcome),
                    ],
                  );
                }
                return ListView(
                  children: [
                    composer,
                    const Divider(),
                    ConstrainedBox(
                      constraints: const BoxConstraints(minHeight: 280),
                      child: outcome,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildComposer(BuildContext context, EventTesterState state) {
    final l10n = AppLocalizations.of(context);
    return ColoredBox(
      color: Theme.of(context).colorScheme.surface,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(28),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                l10n.payload,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 18),
              TextFormField(
                controller: _keyController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: l10n.producerApiKey,
                  prefixIcon: const Icon(Icons.key_outlined),
                ),
                validator: _required,
              ),
              const SizedBox(height: 14),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _typeController,
                      decoration: InputDecoration(labelText: l10n.type),
                      validator: _required,
                    ),
                  ),
                  const SizedBox(width: 12),
                  SizedBox(
                    width: 130,
                    child: TextFormField(
                      controller: _versionController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: l10n.version),
                      validator: (value) => int.tryParse(value ?? '') == null
                          ? l10n.requiredField
                          : null,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              TextFormField(
                controller: _dataController,
                minLines: 10,
                maxLines: 20,
                style: const TextStyle(fontFamily: 'RelayMono'),
                decoration: InputDecoration(labelText: l10n.data),
                validator: _validateJson,
              ),
              const SizedBox(height: 18),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  FilledButton.icon(
                    onPressed: state.submitting ? null : _submit,
                    icon: const Icon(Icons.send),
                    label: Text(l10n.sendEvent),
                  ),
                  if (state.idempotencyKey != null)
                    TextButton.icon(
                      onPressed: state.submitting
                          ? null
                          : context.read<EventTesterCubit>().startNewIntent,
                      icon: const Icon(Icons.refresh),
                      label: Text(l10n.create),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String? _required(String? value) => value == null || value.trim().isEmpty
      ? AppLocalizations.of(context).requiredField
      : null;

  String? _validateJson(String? value) {
    try {
      return jsonDecode(value ?? '') is Map<String, dynamic>
          ? null
          : AppLocalizations.of(context).invalidJson;
    } on FormatException {
      return AppLocalizations.of(context).invalidJson;
    }
  }

  void _submit() {
    if (_formKey.currentState?.validate() != true) return;
    context.read<EventTesterCubit>().submit(
      producerKey: _keyController.text.trim(),
      request: EventCreateRequestDto(
        type: _typeController.text.trim(),
        version: int.parse(_versionController.text),
        occurredAt: DateTime.now().toUtc(),
        data: jsonDecode(_dataController.text) as Map<String, dynamic>,
      ),
    );
  }
}

final class _TesterOutcome extends StatelessWidget {
  const _TesterOutcome({required this.state});

  final EventTesterState state;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(l10n.details, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 18),
          if (state.idempotencyKey case final key?) ...[
            Text(
              l10n.idempotencyKey,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: 6),
            TechnicalText(key, maxLines: 3),
          ],
          if (state.failure case final failure?) ...[
            const SizedBox(height: 18),
            InlineFailure(failure),
          ],
          if (state.result case final result?) ...[
            const SizedBox(height: 18),
            StatusBadge(result.event.status),
            const SizedBox(height: 16),
            Text(l10n.eventAccepted),
            const SizedBox(height: 5),
            TechnicalText(result.event.eventId),
            const SizedBox(height: 16),
            Text('${l10n.deliveryCount}: ${result.event.deliveryCount}'),
            if (result.replayed) ...[
              const SizedBox(height: 8),
              Text(l10n.replayedRequest),
            ],
          ],
          if (state.idempotencyKey == null &&
              state.failure == null &&
              state.result == null)
            const EmptyView(),
        ],
      ),
    );
  }
}
