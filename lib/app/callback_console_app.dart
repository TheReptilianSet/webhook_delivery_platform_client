import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/domain/idempotency_key_generator.dart';
import '../core/presentation/brand_theme.dart';
import '../features/api_keys/domain/api_keys_repository.dart';
import '../features/auth/presentation/session_cubit.dart';
import '../features/auth/presentation/session_state.dart';
import '../features/deliveries/domain/deliveries_repository.dart';
import '../features/endpoints/domain/endpoints_repository.dart';
import '../features/events/domain/events_repository.dart';
import '../features/organizations/domain/organizations_repository.dart';
import '../features/organizations/presentation/organization_cubit.dart';
import '../l10n/app_localizations.dart';
import 'app_dependencies.dart';
import 'app_router.dart';

final class CallbackConsoleApp extends StatefulWidget {
  const CallbackConsoleApp({required this.dependencies, super.key});
  final AppDependencies dependencies;
  @override
  State<CallbackConsoleApp> createState() => _CallbackConsoleAppState();
}

class _CallbackConsoleAppState extends State<CallbackConsoleApp> {
  late final _routerRefresh = RouterRefreshNotifier(
    widget.dependencies.sessionCubit.stream,
  );
  late final _router = createRouter(
    widget.dependencies.sessionCubit,
    refreshListenable: _routerRefresh,
  );

  @override
  void initState() {
    super.initState();
    widget.dependencies.sessionCubit.restore();
  }

  @override
  void dispose() {
    _router.dispose();
    _routerRefresh.dispose();
    unawaited(widget.dependencies.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MultiRepositoryProvider(
    providers: [
      RepositoryProvider<OrganizationsRepository>.value(
        value: widget.dependencies.organizationsRepository,
      ),
      RepositoryProvider<EndpointsRepository>.value(
        value: widget.dependencies.endpointsRepository,
      ),
      RepositoryProvider<ApiKeysRepository>.value(
        value: widget.dependencies.apiKeysRepository,
      ),
      RepositoryProvider<EventsRepository>.value(
        value: widget.dependencies.eventsRepository,
      ),
      RepositoryProvider<DeliveriesRepository>.value(
        value: widget.dependencies.deliveriesRepository,
      ),
      RepositoryProvider<IdempotencyKeyGenerator>.value(
        value: widget.dependencies.idempotencyKeyGenerator,
      ),
    ],
    child: MultiBlocProvider(
      providers: [
        BlocProvider<SessionCubit>.value(
          value: widget.dependencies.sessionCubit,
        ),
        BlocProvider<OrganizationCubit>.value(
          value: widget.dependencies.organizationCubit,
        ),
      ],
      child: BlocListener<SessionCubit, SessionState>(
        listenWhen: (before, after) => before.status != after.status,
        listener: (context, state) {
          if (state.status == SessionStatus.signedOut) {
            context.read<OrganizationCubit>().clear();
          }
        },
        child: MaterialApp.router(
          onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: RelayTheme.light(),
          routerConfig: _router,
        ),
      ),
    ),
  );
}
