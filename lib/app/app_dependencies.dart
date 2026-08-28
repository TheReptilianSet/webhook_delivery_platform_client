import 'package:dio/dio.dart';

import '../core/domain/idempotency_key_generator.dart';
import '../core/network/dio_factory.dart';
import '../core/session/data/secure_session_store.dart';
import '../core/session/data/session_repository_impl.dart';
import '../core/session/domain/session_repository.dart';
import '../features/api_keys/data/api_keys_api.dart';
import '../features/api_keys/data/api_keys_repository_impl.dart';
import '../features/api_keys/domain/api_keys_repository.dart';
import '../features/auth/data/auth_remote_session_gateway.dart';
import '../features/auth/data/auth_repository_impl.dart';
import '../features/auth/data/identity_api.dart';
import '../features/auth/domain/auth_repository.dart';
import '../features/auth/presentation/session_cubit.dart';
import '../features/deliveries/data/deliveries_api.dart';
import '../features/deliveries/data/deliveries_repository_impl.dart';
import '../features/deliveries/domain/deliveries_repository.dart';
import '../features/endpoints/data/endpoints_api.dart';
import '../features/endpoints/data/endpoints_repository_impl.dart';
import '../features/endpoints/domain/endpoints_repository.dart';
import '../features/events/data/events_api.dart';
import '../features/events/data/events_repository_impl.dart';
import '../features/events/domain/events_repository.dart';
import '../features/organizations/data/organizations_api.dart';
import '../features/organizations/data/organizations_repository_impl.dart';
import '../features/organizations/domain/organizations_repository.dart';
import '../features/organizations/presentation/organization_cubit.dart';
import 'app_config.dart';

final class AppDependencies {
  AppDependencies._({
    required this.sessionRepository,
    required this.authRepository,
    required this.organizationsRepository,
    required this.endpointsRepository,
    required this.apiKeysRepository,
    required this.eventsRepository,
    required this.deliveriesRepository,
    required this.idempotencyKeyGenerator,
    required this.sessionCubit,
    required this.organizationCubit,
    required Dio anonymousDio,
    required Dio authenticatedDio,
  }) : _anonymousDio = anonymousDio,
       _authenticatedDio = authenticatedDio;

  factory AppDependencies.create(AppConfig config) {
    final anonymousDio = DioFactory.createAnonymous(config.apiBaseUrl);
    final anonymousIdentityApi = IdentityApi(anonymousDio);
    final remoteSession = AuthRemoteSessionGateway(anonymousIdentityApi);
    final sessionRepository = SessionRepositoryImpl(
      store: SecureSessionStore(),
      remote: remoteSession,
    );
    final authenticatedDio = DioFactory.createAuthenticated(
      config.apiBaseUrl,
      sessionRepository,
    );
    final authenticatedIdentityApi = IdentityApi(authenticatedDio);

    final authRepository = AuthRepositoryImpl(
      anonymousApi: anonymousIdentityApi,
      authenticatedApi: authenticatedIdentityApi,
      session: sessionRepository,
    );
    final organizationsRepository = OrganizationsRepositoryImpl(
      OrganizationsApi(authenticatedDio),
    );
    final endpointsRepository = EndpointsRepositoryImpl(
      EndpointsApi(authenticatedDio),
    );
    final apiKeysRepository = ApiKeysRepositoryImpl(
      ApiKeysApi(authenticatedDio),
    );
    final eventsRepository = EventsRepositoryImpl(
      managementApi: EventsApi(authenticatedDio),
      producerApi: ProducerEventsApi(anonymousDio),
    );
    final deliveriesRepository = DeliveriesRepositoryImpl(
      DeliveriesApi(authenticatedDio),
    );

    return AppDependencies._(
      sessionRepository: sessionRepository,
      authRepository: authRepository,
      organizationsRepository: organizationsRepository,
      endpointsRepository: endpointsRepository,
      apiKeysRepository: apiKeysRepository,
      eventsRepository: eventsRepository,
      deliveriesRepository: deliveriesRepository,
      idempotencyKeyGenerator: IdempotencyKeyGenerator(),
      sessionCubit: SessionCubit(
        sessionRepository: sessionRepository,
        authRepository: authRepository,
      ),
      organizationCubit: OrganizationCubit(organizationsRepository),
      anonymousDio: anonymousDio,
      authenticatedDio: authenticatedDio,
    );
  }

  final SessionRepository sessionRepository;
  final AuthRepository authRepository;
  final OrganizationsRepository organizationsRepository;
  final EndpointsRepository endpointsRepository;
  final ApiKeysRepository apiKeysRepository;
  final EventsRepository eventsRepository;
  final DeliveriesRepository deliveriesRepository;
  final IdempotencyKeyGenerator idempotencyKeyGenerator;
  final SessionCubit sessionCubit;
  final OrganizationCubit organizationCubit;
  final Dio _anonymousDio;
  final Dio _authenticatedDio;

  Future<void> dispose() async {
    await sessionCubit.close();
    await organizationCubit.close();
    await sessionRepository.close();
    _anonymousDio.close(force: true);
    _authenticatedDio.close(force: true);
  }
}
