import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../core/domain/idempotency_key_generator.dart';
import '../features/api_keys/domain/api_keys_repository.dart';
import '../features/api_keys/presentation/api_keys_cubit.dart';
import '../features/api_keys/presentation/api_keys_page.dart';
import '../features/auth/presentation/auth_pages.dart';
import '../features/auth/presentation/session_cubit.dart';
import '../features/auth/presentation/session_state.dart';
import '../features/deliveries/domain/deliveries_repository.dart';
import '../features/deliveries/presentation/deliveries_cubit.dart';
import '../features/deliveries/presentation/deliveries_pages.dart';
import '../features/deliveries/presentation/delivery_detail_cubit.dart';
import '../features/endpoints/domain/endpoints_repository.dart';
import '../features/endpoints/presentation/endpoints_cubit.dart';
import '../features/endpoints/presentation/endpoints_page.dart';
import '../features/events/domain/events_repository.dart';
import '../features/events/presentation/event_tester_cubit.dart';
import '../features/events/presentation/events_cubit.dart';
import '../features/events/presentation/events_pages.dart';
import '../features/organizations/domain/organizations_repository.dart';
import '../features/organizations/presentation/members_cubit.dart';
import '../features/organizations/presentation/members_page.dart';
import '../features/organizations/presentation/organization_gate_page.dart';
import 'app_shell.dart';

part 'app_router.g.dart';

GoRouter createRouter(
  SessionCubit sessionCubit, {
  required Listenable refreshListenable,
}) {
  return GoRouter(
    routes: $appRoutes,
    initialLocation: const OrganizationGateRoute().location,
    refreshListenable: refreshListenable,
    redirect: (context, state) {
      final status = sessionCubit.state.status;
      final isAuthRoute =
          state.matchedLocation == const LoginRoute().location ||
          state.matchedLocation == const RegisterRoute().location;
      if (status == SessionStatus.restoring) {
        return state.matchedLocation == const SessionRestoringRoute().location
            ? null
            : const SessionRestoringRoute().location;
      }
      if (status == SessionStatus.signedOut) {
        return isAuthRoute ? null : const LoginRoute().location;
      }
      if (isAuthRoute ||
          state.matchedLocation == const SessionRestoringRoute().location) {
        return const OrganizationGateRoute().location;
      }
      return null;
    },
    onException: (context, state, router) => router.go(
      sessionCubit.state.status == SessionStatus.authenticated
          ? const OrganizationGateRoute().location
          : const LoginRoute().location,
    ),
  );
}

final class RouterRefreshNotifier extends ChangeNotifier {
  RouterRefreshNotifier(Stream<Object?> stream) {
    _subscription = stream.listen((_) => notifyListeners());
  }

  late final StreamSubscription<Object?> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

@TypedGoRoute<SessionRestoringRoute>(path: '/restoring')
final class SessionRestoringRoute extends GoRouteData
    with $SessionRestoringRoute {
  const SessionRestoringRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SessionRestoringPage();
}

@TypedGoRoute<LoginRoute>(path: '/login')
final class LoginRoute extends GoRouteData with $LoginRoute {
  const LoginRoute({this.email});
  final String? email;
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      LoginPage(initialEmail: email);
}

@TypedGoRoute<RegisterRoute>(path: '/register')
final class RegisterRoute extends GoRouteData with $RegisterRoute {
  const RegisterRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const RegisterPage();
}

@TypedGoRoute<OrganizationGateRoute>(path: '/')
final class OrganizationGateRoute extends GoRouteData
    with $OrganizationGateRoute {
  const OrganizationGateRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const OrganizationGatePage();
}

@TypedShellRoute<AppShellRoute>(
  routes: [
    TypedGoRoute<DeliveriesRoute>(
      path: '/:organizationId/deliveries',
      routes: [TypedGoRoute<DeliveryDetailRoute>(path: ':deliveryId')],
    ),
    TypedGoRoute<EventsRoute>(
      path: '/:organizationId/events',
      routes: [TypedGoRoute<EventDetailRoute>(path: ':eventId')],
    ),
    TypedGoRoute<EndpointsRoute>(path: '/:organizationId/endpoints'),
    TypedGoRoute<ApiKeysRoute>(path: '/:organizationId/api-keys'),
    TypedGoRoute<EventTesterRoute>(path: '/:organizationId/tester'),
    TypedGoRoute<MembersRoute>(path: '/:organizationId/members'),
  ],
)
final class AppShellRoute extends ShellRouteData {
  const AppShellRoute();
  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) =>
      AppShell(
        organizationId: state.pathParameters['organizationId']!,
        child: navigator,
      );
}

final class DeliveriesRoute extends GoRouteData with $DeliveriesRoute {
  const DeliveriesRoute({required this.organizationId});
  final String organizationId;
  @override
  Widget build(BuildContext context, GoRouterState state) => BlocProvider(
    create: (context) => DeliveriesCubit(
      repository: context.read<DeliveriesRepository>(),
      organizationId: organizationId,
    )..load(),
    child: DeliveriesPage(organizationId: organizationId),
  );
}

final class DeliveryDetailRoute extends GoRouteData with $DeliveryDetailRoute {
  const DeliveryDetailRoute({
    required this.organizationId,
    required this.deliveryId,
  });
  final String organizationId;
  final String deliveryId;
  @override
  Widget build(BuildContext context, GoRouterState state) => BlocProvider(
    create: (context) => DeliveryDetailCubit(
      repository: context.read<DeliveriesRepository>(),
      keyGenerator: context.read<IdempotencyKeyGenerator>(),
      organizationId: organizationId,
      deliveryId: deliveryId,
    )..load(),
    child: const DeliveryDetailPage(),
  );
}

final class EventsRoute extends GoRouteData with $EventsRoute {
  const EventsRoute({required this.organizationId});
  final String organizationId;
  @override
  Widget build(BuildContext context, GoRouterState state) => BlocProvider(
    create: (context) => EventsCubit(
      repository: context.read<EventsRepository>(),
      organizationId: organizationId,
    )..load(),
    child: EventsPage(organizationId: organizationId),
  );
}

final class EventDetailRoute extends GoRouteData with $EventDetailRoute {
  const EventDetailRoute({required this.organizationId, required this.eventId});
  final String organizationId;
  final String eventId;
  @override
  Widget build(BuildContext context, GoRouterState state) => BlocProvider(
    create: (context) => EventDetailCubit(
      repository: context.read<EventsRepository>(),
      organizationId: organizationId,
      eventId: eventId,
    )..load(),
    child: const EventDetailPage(),
  );
}

final class EndpointsRoute extends GoRouteData with $EndpointsRoute {
  const EndpointsRoute({required this.organizationId});
  final String organizationId;
  @override
  Widget build(BuildContext context, GoRouterState state) => BlocProvider(
    create: (context) => EndpointsCubit(
      repository: context.read<EndpointsRepository>(),
      organizationId: organizationId,
    )..load(),
    child: const EndpointsPage(),
  );
}

final class ApiKeysRoute extends GoRouteData with $ApiKeysRoute {
  const ApiKeysRoute({required this.organizationId});
  final String organizationId;
  @override
  Widget build(BuildContext context, GoRouterState state) => BlocProvider(
    create: (context) => ApiKeysCubit(
      repository: context.read<ApiKeysRepository>(),
      organizationId: organizationId,
    )..load(),
    child: const ApiKeysPage(),
  );
}

final class EventTesterRoute extends GoRouteData with $EventTesterRoute {
  const EventTesterRoute({required this.organizationId});
  final String organizationId;
  @override
  Widget build(BuildContext context, GoRouterState state) => BlocProvider(
    create: (context) => EventTesterCubit(
      repository: context.read<EventsRepository>(),
      keyGenerator: context.read<IdempotencyKeyGenerator>(),
    ),
    child: const EventTesterPage(),
  );
}

final class MembersRoute extends GoRouteData with $MembersRoute {
  const MembersRoute({required this.organizationId});
  final String organizationId;
  @override
  Widget build(BuildContext context, GoRouterState state) => BlocProvider(
    create: (context) => MembersCubit(
      repository: context.read<OrganizationsRepository>(),
      organizationId: organizationId,
    )..load(),
    child: const MembersPage(),
  );
}
