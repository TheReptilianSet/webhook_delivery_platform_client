// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
  $sessionRestoringRoute,
  $loginRoute,
  $registerRoute,
  $organizationGateRoute,
  $appShellRoute,
];

RouteBase get $sessionRestoringRoute => GoRouteData.$route(
  path: '/restoring',
  hasOverriddenOnExit: false,
  factory: $SessionRestoringRoute._fromState,
);

mixin $SessionRestoringRoute on GoRouteData {
  static SessionRestoringRoute _fromState(GoRouterState state) =>
      const SessionRestoringRoute();

  @override
  String get location => GoRouteData.$location('/restoring');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $loginRoute => GoRouteData.$route(
  path: '/login',
  hasOverriddenOnExit: false,
  factory: $LoginRoute._fromState,
);

mixin $LoginRoute on GoRouteData {
  static LoginRoute _fromState(GoRouterState state) =>
      LoginRoute(email: state.uri.queryParameters['email']);

  LoginRoute get _self => this as LoginRoute;

  @override
  String get location => GoRouteData.$location(
    '/login',
    queryParams: {if (_self.email != null) 'email': _self.email},
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $registerRoute => GoRouteData.$route(
  path: '/register',
  hasOverriddenOnExit: false,
  factory: $RegisterRoute._fromState,
);

mixin $RegisterRoute on GoRouteData {
  static RegisterRoute _fromState(GoRouterState state) => const RegisterRoute();

  @override
  String get location => GoRouteData.$location('/register');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $organizationGateRoute => GoRouteData.$route(
  path: '/',
  hasOverriddenOnExit: false,
  factory: $OrganizationGateRoute._fromState,
);

mixin $OrganizationGateRoute on GoRouteData {
  static OrganizationGateRoute _fromState(GoRouterState state) =>
      const OrganizationGateRoute();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $appShellRoute => ShellRouteData.$route(
  factory: $AppShellRouteExtension._fromState,
  routes: [
    GoRouteData.$route(
      path: '/:organizationId/deliveries',
      hasOverriddenOnExit: false,
      factory: $DeliveriesRoute._fromState,
      routes: [
        GoRouteData.$route(
          path: ':deliveryId',
          hasOverriddenOnExit: false,
          factory: $DeliveryDetailRoute._fromState,
        ),
      ],
    ),
    GoRouteData.$route(
      path: '/:organizationId/events',
      hasOverriddenOnExit: false,
      factory: $EventsRoute._fromState,
      routes: [
        GoRouteData.$route(
          path: ':eventId',
          hasOverriddenOnExit: false,
          factory: $EventDetailRoute._fromState,
        ),
      ],
    ),
    GoRouteData.$route(
      path: '/:organizationId/endpoints',
      hasOverriddenOnExit: false,
      factory: $EndpointsRoute._fromState,
    ),
    GoRouteData.$route(
      path: '/:organizationId/api-keys',
      hasOverriddenOnExit: false,
      factory: $ApiKeysRoute._fromState,
    ),
    GoRouteData.$route(
      path: '/:organizationId/tester',
      hasOverriddenOnExit: false,
      factory: $EventTesterRoute._fromState,
    ),
    GoRouteData.$route(
      path: '/:organizationId/members',
      hasOverriddenOnExit: false,
      factory: $MembersRoute._fromState,
    ),
  ],
);

extension $AppShellRouteExtension on AppShellRoute {
  static AppShellRoute _fromState(GoRouterState state) => const AppShellRoute();
}

mixin $DeliveriesRoute on GoRouteData {
  static DeliveriesRoute _fromState(GoRouterState state) =>
      DeliveriesRoute(organizationId: state.pathParameters['organizationId']!);

  DeliveriesRoute get _self => this as DeliveriesRoute;

  @override
  String get location => GoRouteData.$location(
    '/${Uri.encodeComponent(_self.organizationId)}/deliveries',
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $DeliveryDetailRoute on GoRouteData {
  static DeliveryDetailRoute _fromState(GoRouterState state) =>
      DeliveryDetailRoute(
        organizationId: state.pathParameters['organizationId']!,
        deliveryId: state.pathParameters['deliveryId']!,
      );

  DeliveryDetailRoute get _self => this as DeliveryDetailRoute;

  @override
  String get location => GoRouteData.$location(
    '/${Uri.encodeComponent(_self.organizationId)}/deliveries/${Uri.encodeComponent(_self.deliveryId)}',
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $EventsRoute on GoRouteData {
  static EventsRoute _fromState(GoRouterState state) =>
      EventsRoute(organizationId: state.pathParameters['organizationId']!);

  EventsRoute get _self => this as EventsRoute;

  @override
  String get location => GoRouteData.$location(
    '/${Uri.encodeComponent(_self.organizationId)}/events',
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $EventDetailRoute on GoRouteData {
  static EventDetailRoute _fromState(GoRouterState state) => EventDetailRoute(
    organizationId: state.pathParameters['organizationId']!,
    eventId: state.pathParameters['eventId']!,
  );

  EventDetailRoute get _self => this as EventDetailRoute;

  @override
  String get location => GoRouteData.$location(
    '/${Uri.encodeComponent(_self.organizationId)}/events/${Uri.encodeComponent(_self.eventId)}',
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $EndpointsRoute on GoRouteData {
  static EndpointsRoute _fromState(GoRouterState state) =>
      EndpointsRoute(organizationId: state.pathParameters['organizationId']!);

  EndpointsRoute get _self => this as EndpointsRoute;

  @override
  String get location => GoRouteData.$location(
    '/${Uri.encodeComponent(_self.organizationId)}/endpoints',
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ApiKeysRoute on GoRouteData {
  static ApiKeysRoute _fromState(GoRouterState state) =>
      ApiKeysRoute(organizationId: state.pathParameters['organizationId']!);

  ApiKeysRoute get _self => this as ApiKeysRoute;

  @override
  String get location => GoRouteData.$location(
    '/${Uri.encodeComponent(_self.organizationId)}/api-keys',
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $EventTesterRoute on GoRouteData {
  static EventTesterRoute _fromState(GoRouterState state) =>
      EventTesterRoute(organizationId: state.pathParameters['organizationId']!);

  EventTesterRoute get _self => this as EventTesterRoute;

  @override
  String get location => GoRouteData.$location(
    '/${Uri.encodeComponent(_self.organizationId)}/tester',
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $MembersRoute on GoRouteData {
  static MembersRoute _fromState(GoRouterState state) =>
      MembersRoute(organizationId: state.pathParameters['organizationId']!);

  MembersRoute get _self => this as MembersRoute;

  @override
  String get location => GoRouteData.$location(
    '/${Uri.encodeComponent(_self.organizationId)}/members',
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
