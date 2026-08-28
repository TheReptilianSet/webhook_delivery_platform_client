import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../core/presentation/brand_theme.dart';
import '../core/presentation/relay_trace_mark.dart';
import '../features/auth/presentation/session_cubit.dart';
import '../features/organizations/data/organization_dtos.dart';
import '../features/organizations/presentation/organization_cubit.dart';
import '../features/organizations/presentation/organization_state.dart';
import '../l10n/app_localizations.dart';
import 'app_router.dart';

final class AppShell extends StatefulWidget {
  const AppShell({
    required this.organizationId,
    required this.child,
    super.key,
  });

  final String organizationId;
  final Widget child;

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  @override
  void initState() {
    super.initState();
    _synchronizeOrganization();
  }

  @override
  void didUpdateWidget(covariant AppShell oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.organizationId != widget.organizationId) {
      _synchronizeOrganization();
    }
  }

  void _synchronizeOrganization() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        context.read<OrganizationCubit>().select(widget.organizationId);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final wide = MediaQuery.sizeOf(context).width >= 840;
    return BlocBuilder<OrganizationCubit, OrganizationState>(
      builder: (context, organizationState) {
        if (!wide) {
          return Scaffold(
            appBar: AppBar(
              titleSpacing: 0,
              title: const RelayConsoleWordmark(
                darkBackground: true,
                markSize: 30,
              ),
              actions: [
                IconButton(
                  tooltip: AppLocalizations.of(context).signOut,
                  onPressed: context.read<SessionCubit>().logout,
                  icon: const Icon(Icons.logout),
                ),
              ],
            ),
            drawer: Drawer(
              width: 286,
              backgroundColor: BrandColors.ink,
              shape: const RoundedRectangleBorder(),
              child: SafeArea(
                child: _MobileNavigation(
                  organizationId: widget.organizationId,
                  organizations: organizationState.items,
                ),
              ),
            ),
            body: widget.child,
          );
        }

        return Scaffold(
          body: Column(
            children: [
              _ContextBar(
                organizationId: widget.organizationId,
                organizations: organizationState.items,
              ),
              Expanded(
                child: Row(
                  children: [
                    _NavigationRail(organizationId: widget.organizationId),
                    const VerticalDivider(width: 1),
                    Expanded(child: widget.child),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

final class _ContextBar extends StatelessWidget {
  const _ContextBar({
    required this.organizationId,
    required this.organizations,
  });

  final String organizationId;
  final List<OrganizationDto> organizations;

  @override
  Widget build(BuildContext context) {
    final profile = context.watch<SessionCubit>().state.profile;
    final selected = organizations
        .where((item) => item.id == organizationId)
        .firstOrNull;
    return Material(
      color: BrandColors.ink,
      child: SafeArea(
        bottom: false,
        child: SizedBox(
          height: 64,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              children: [
                const SizedBox(
                  width: 172,
                  child: RelayConsoleWordmark(
                    darkBackground: true,
                    markSize: 34,
                  ),
                ),
                Container(width: 1, height: 30, color: Colors.white12),
                const SizedBox(width: 18),
                SizedBox(
                  width: 260,
                  child: _OrganizationSelector(
                    organizationId: organizationId,
                    organizations: organizations,
                  ),
                ),
                const Spacer(),
                if (MediaQuery.sizeOf(context).width >= 1040 && profile != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          profile.user.email,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        if (selected != null)
                          Text(
                            selected.role,
                            style: const TextStyle(
                              color: BrandColors.inkMuted,
                              fontSize: 11,
                            ),
                          ),
                      ],
                    ),
                  ),
                IconButton(
                  tooltip: AppLocalizations.of(context).signOut,
                  color: Colors.white,
                  onPressed: context.read<SessionCubit>().logout,
                  icon: const Icon(Icons.logout),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final class _OrganizationSelector extends StatelessWidget {
  const _OrganizationSelector({
    required this.organizationId,
    required this.organizations,
  });

  final String organizationId;
  final List<OrganizationDto> organizations;

  @override
  Widget build(BuildContext context) => Theme(
    data: RelayTheme.darkPanel(Theme.of(context)),
    child: DropdownButtonFormField<String>(
      initialValue: organizations.any((item) => item.id == organizationId)
          ? organizationId
          : null,
      isExpanded: true,
      decoration: InputDecoration(
        labelText: AppLocalizations.of(context).organization,
      ),
      dropdownColor: BrandColors.inkRaised,
      style: const TextStyle(color: Colors.white, fontSize: 13),
      items: [
        for (final organization in organizations)
          DropdownMenuItem(
            value: organization.id,
            child: Text(organization.name, overflow: TextOverflow.ellipsis),
          ),
      ],
      onChanged: (value) {
        if (value == null) return;
        context.read<OrganizationCubit>().select(value);
        DeliveriesRoute(organizationId: value).go(context);
      },
    ),
  );
}

final class _NavigationRail extends StatelessWidget {
  const _NavigationRail({required this.organizationId});

  final String organizationId;

  @override
  Widget build(BuildContext context) => Material(
    color: BrandColors.ink,
    child: SafeArea(
      top: false,
      child: SizedBox(
        width: 72,
        child: _NavigationDestinations(
          organizationId: organizationId,
          expanded: false,
        ),
      ),
    ),
  );
}

final class _MobileNavigation extends StatelessWidget {
  const _MobileNavigation({
    required this.organizationId,
    required this.organizations,
  });

  final String organizationId;
  final List<OrganizationDto> organizations;

  @override
  Widget build(BuildContext context) {
    final profile = context.watch<SessionCubit>().state.profile;
    final role = organizations
        .where((item) => item.id == organizationId)
        .firstOrNull
        ?.role;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(18, 14, 18, 18),
          child: RelayConsoleWordmark(darkBackground: true, markSize: 38),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: _OrganizationSelector(
            organizationId: organizationId,
            organizations: organizations,
          ),
        ),
        const SizedBox(height: 14),
        Expanded(
          child: _NavigationDestinations(
            organizationId: organizationId,
            expanded: true,
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(18, 14, 12, 14),
          decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: Colors.white12)),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.account_circle_outlined,
                color: BrandColors.inkMuted,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      profile?.user.email ?? '',
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.white, fontSize: 13),
                    ),
                    if (role != null)
                      Text(
                        role,
                        style: const TextStyle(
                          color: BrandColors.inkMuted,
                          fontSize: 11,
                        ),
                      ),
                  ],
                ),
              ),
              IconButton(
                tooltip: AppLocalizations.of(context).signOut,
                color: Colors.white,
                onPressed: context.read<SessionCubit>().logout,
                icon: const Icon(Icons.logout),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

final class _NavigationDestinations extends StatelessWidget {
  const _NavigationDestinations({
    required this.organizationId,
    required this.expanded,
  });

  final String organizationId;
  final bool expanded;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final path = GoRouterState.of(context).uri.path;
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: expanded ? 10 : 8, vertical: 8),
      children: [
        _RailDestination(
          label: l10n.deliveries,
          icon: Icons.outbox_outlined,
          selected: path.contains('/deliveries'),
          expanded: expanded,
          onTap: () =>
              DeliveriesRoute(organizationId: organizationId).go(context),
        ),
        _RailDestination(
          label: l10n.events,
          icon: Icons.data_object,
          selected: path.contains('/events') && !path.contains('/tester'),
          expanded: expanded,
          onTap: () => EventsRoute(organizationId: organizationId).go(context),
        ),
        _RailDestination(
          label: l10n.endpoints,
          icon: Icons.hub_outlined,
          selected: path.contains('/endpoints'),
          expanded: expanded,
          onTap: () =>
              EndpointsRoute(organizationId: organizationId).go(context),
        ),
        _RailDestination(
          label: l10n.apiKeys,
          icon: Icons.key_outlined,
          selected: path.contains('/api-keys'),
          expanded: expanded,
          onTap: () => ApiKeysRoute(organizationId: organizationId).go(context),
        ),
        _RailDestination(
          label: l10n.eventTester,
          icon: Icons.send_outlined,
          selected: path.contains('/tester'),
          expanded: expanded,
          onTap: () =>
              EventTesterRoute(organizationId: organizationId).go(context),
        ),
        _RailDestination(
          label: l10n.members,
          icon: Icons.group_outlined,
          selected: path.contains('/members'),
          expanded: expanded,
          onTap: () => MembersRoute(organizationId: organizationId).go(context),
        ),
      ],
    );
  }
}

final class _RailDestination extends StatelessWidget {
  const _RailDestination({
    required this.label,
    required this.icon,
    required this.selected,
    required this.expanded,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final bool selected;
  final bool expanded;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final content = Material(
      color: selected
          ? BrandColors.route.withValues(alpha: 0.16)
          : Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 48,
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: selected ? BrandColors.route : Colors.transparent,
                width: 3,
              ),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: expanded ? 13 : 0),
          child: Row(
            mainAxisAlignment: expanded
                ? MainAxisAlignment.start
                : MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 21,
                color: selected ? Colors.white : BrandColors.inkMuted,
              ),
              if (expanded) ...[
                const SizedBox(width: 13),
                Expanded(
                  child: Text(
                    label,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: selected ? Colors.white : BrandColors.inkMuted,
                      fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: expanded ? content : Tooltip(message: label, child: content),
    );
  }
}
