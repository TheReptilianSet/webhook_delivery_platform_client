import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
import '../network/app_failure.dart';
import 'app_failure_l10n.dart';
import 'brand_theme.dart';
import 'relay_trace_mark.dart';

final class PageHeader extends StatelessWidget {
  const PageHeader({required this.title, this.actions = const [], super.key});

  final String title;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: BrandColors.surface,
        border: Border(bottom: BorderSide(color: BrandColors.line)),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final horizontal = constraints.maxWidth < 600 ? 16.0 : 28.0;
          final actionRow = Wrap(spacing: 8, runSpacing: 8, children: actions);
          if (constraints.maxWidth < 560 && actions.isNotEmpty) {
            return Padding(
              padding: EdgeInsets.fromLTRB(horizontal, 18, horizontal, 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(title, style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(height: 12),
                  Align(alignment: Alignment.centerRight, child: actionRow),
                ],
              ),
            );
          }
          return Padding(
            padding: EdgeInsets.fromLTRB(horizontal, 17, horizontal, 16),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                actionRow,
              ],
            ),
          );
        },
      ),
    );
  }
}

final class CommandBar extends StatelessWidget {
  const CommandBar({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: const BoxDecoration(
      color: BrandColors.surface,
      border: Border(bottom: BorderSide(color: BrandColors.line)),
    ),
    child: Padding(
      padding: EdgeInsets.fromLTRB(
        MediaQuery.sizeOf(context).width < 600 ? 16 : 28,
        12,
        MediaQuery.sizeOf(context).width < 600 ? 16 : 28,
        12,
      ),
      child: child,
    ),
  );
}

final class TechnicalText extends StatelessWidget {
  const TechnicalText(this.value, {this.color, this.maxLines = 1, super.key});

  final String value;
  final Color? color;
  final int maxLines;

  @override
  Widget build(BuildContext context) => Text(
    value,
    maxLines: maxLines,
    overflow: TextOverflow.ellipsis,
    style: Theme.of(context).textTheme.bodySmall?.copyWith(
      color: color ?? BrandColors.ink,
      fontFamily: 'RelayMono',
    ),
  );
}

final class OperationalColumn {
  const OperationalColumn({required this.label, this.flex = 1});

  final String label;
  final int flex;
}

final class OperationalDataRow {
  const OperationalDataRow({required this.cells, this.onTap});

  final List<Widget> cells;
  final VoidCallback? onTap;
}

final class OperationalTable extends StatefulWidget {
  const OperationalTable({
    required this.columns,
    required this.rows,
    this.footer,
    this.minDesktopWidth = 880,
    super.key,
  });

  final List<OperationalColumn> columns;
  final List<OperationalDataRow> rows;
  final Widget? footer;
  final double minDesktopWidth;

  @override
  State<OperationalTable> createState() => _OperationalTableState();
}

class _OperationalTableState extends State<OperationalTable> {
  final _horizontalController = ScrollController();

  @override
  void dispose() {
    _horizontalController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) {
      if (constraints.maxWidth < 720) return _buildMobile(context);
      final width = constraints.maxWidth < widget.minDesktopWidth
          ? widget.minDesktopWidth
          : constraints.maxWidth;
      return Scrollbar(
        controller: _horizontalController,
        thumbVisibility: constraints.maxWidth < widget.minDesktopWidth,
        child: SingleChildScrollView(
          controller: _horizontalController,
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            width: width,
            height: constraints.maxHeight,
            child: Column(
              children: [
                _TableHeader(columns: widget.columns),
                Expanded(
                  child: ListView.builder(
                    itemCount:
                        widget.rows.length + (widget.footer == null ? 0 : 1),
                    itemBuilder: (context, index) {
                      if (index == widget.rows.length) {
                        return _TableFooter(child: widget.footer!);
                      }
                      return _DesktopTableRow(
                        columns: widget.columns,
                        row: widget.rows[index],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );

  Widget _buildMobile(BuildContext context) => ListView.builder(
    itemCount: widget.rows.length + (widget.footer == null ? 0 : 1),
    itemBuilder: (context, index) {
      if (index == widget.rows.length) {
        return _TableFooter(child: widget.footer!);
      }
      final row = widget.rows[index];
      return Material(
        color: BrandColors.surface,
        child: InkWell(
          onTap: row.onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: BrandColors.line)),
            ),
            child: Column(
              children: [
                for (var cell = 0; cell < widget.columns.length; cell++)
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: cell == widget.columns.length - 1 ? 0 : 8,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 108,
                          child: Text(
                            widget.columns[cell].label,
                            style: Theme.of(context).textTheme.labelSmall
                                ?.copyWith(
                                  color: BrandColors.muted,
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(child: row.cells[cell]),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

final class _TableHeader extends StatelessWidget {
  const _TableHeader({required this.columns});

  final List<OperationalColumn> columns;

  @override
  Widget build(BuildContext context) => Container(
    height: 42,
    padding: const EdgeInsets.symmetric(horizontal: 28),
    decoration: const BoxDecoration(
      color: Color(0xFFECEFEE),
      border: Border(bottom: BorderSide(color: BrandColors.line)),
    ),
    child: Row(
      children: [
        for (final column in columns)
          Expanded(
            flex: column.flex,
            child: Text(
              column.label,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: BrandColors.muted,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
      ],
    ),
  );
}

final class _DesktopTableRow extends StatelessWidget {
  const _DesktopTableRow({required this.columns, required this.row});

  final List<OperationalColumn> columns;
  final OperationalDataRow row;

  @override
  Widget build(BuildContext context) {
    assert(columns.length == row.cells.length);
    return Material(
      color: BrandColors.surface,
      child: InkWell(
        onTap: row.onTap,
        child: Container(
          constraints: const BoxConstraints(minHeight: 66),
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 11),
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: BrandColors.line)),
          ),
          child: Row(
            children: [
              for (var cell = 0; cell < columns.length; cell++)
                Expanded(
                  flex: columns[cell].flex,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: DefaultTextStyle.merge(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      child: row.cells[cell],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

final class _TableFooter extends StatelessWidget {
  const _TableFooter({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) => Container(
    constraints: const BoxConstraints(minHeight: 56),
    alignment: Alignment.center,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    color: BrandColors.surface,
    child: child,
  );
}

final class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) => const Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RelayTraceMark(size: 56),
        SizedBox(height: 18),
        SizedBox(width: 120, child: LinearProgressIndicator(minHeight: 3)),
      ],
    ),
  );
}

final class EmptyView extends StatelessWidget {
  const EmptyView({this.message, super.key});

  final String? message;

  @override
  Widget build(BuildContext context) => Center(
    child: Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.inbox_outlined, size: 32, color: BrandColors.muted),
          const SizedBox(height: 10),
          Text(
            message ?? AppLocalizations.of(context).noData,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(color: BrandColors.muted),
          ),
        ],
      ),
    ),
  );
}

final class FailureView extends StatelessWidget {
  const FailureView({required this.failure, required this.onRetry, super.key});

  final AppFailure failure;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 480),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.error_outline,
                size: 36,
                color: BrandColors.error,
              ),
              const SizedBox(height: 12),
              Text(failure.localized(context), textAlign: TextAlign.center),
              if (failure.requestId case final requestId?) ...[
                const SizedBox(height: 8),
                SelectableText('${l10n.requestId}: $requestId'),
              ],
              const SizedBox(height: 16),
              FilledButton.icon(
                onPressed: onRetry,
                icon: const Icon(Icons.refresh),
                label: Text(l10n.retry),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final class InlineFailure extends StatelessWidget {
  const InlineFailure(this.failure, {super.key});

  final AppFailure failure;

  @override
  Widget build(BuildContext context) => Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
    decoration: const BoxDecoration(
      color: Color(0xFFFFF5F5),
      border: Border(
        left: BorderSide(color: BrandColors.error, width: 3),
        bottom: BorderSide(color: BrandColors.line),
      ),
    ),
    child: Text(
      failure.localized(context),
      style: const TextStyle(color: BrandColors.error),
    ),
  );
}

final class StatusBadge extends StatelessWidget {
  const StatusBadge(this.status, {super.key});

  final String status;

  @override
  Widget build(BuildContext context) {
    final color = switch (status) {
      'succeeded' || 'active' => BrandColors.success,
      'dead_lettered' ||
      'failed' ||
      'deleted' ||
      'revoked' => BrandColors.error,
      'retry_scheduled' || 'pending_verification' => BrandColors.retry,
      'cancelled' || 'disabled' => BrandColors.muted,
      _ => BrandColors.route,
    };
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(width: 8, height: 8, color: color),
        const SizedBox(width: 7),
        Flexible(
          child: Text(
            status.replaceAll('_', ' '),
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: color,
              fontSize: 11,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}

Future<bool> showConfirmation(
  BuildContext context, {
  required String title,
  String? body,
}) async {
  final l10n = AppLocalizations.of(context);
  return await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(title),
          content: body == null ? null : Text(body),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: Text(l10n.cancel),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, true),
              child: Text(l10n.confirm),
            ),
          ],
        ),
      ) ??
      false;
}
