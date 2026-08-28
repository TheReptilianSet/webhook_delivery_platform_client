// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Relay Console';

  @override
  String get signIn => 'Войти';

  @override
  String get createAccount => 'Создать аккаунт';

  @override
  String get email => 'Email';

  @override
  String get password => 'Пароль';

  @override
  String get organizationName => 'Название организации';

  @override
  String get noAccount => 'Создать аккаунт';

  @override
  String get haveAccount => 'Вернуться ко входу';

  @override
  String get signOut => 'Выйти';

  @override
  String get loading => 'Загрузка';

  @override
  String get retry => 'Повторить';

  @override
  String get refresh => 'Обновить';

  @override
  String get cancel => 'Отмена';

  @override
  String get close => 'Закрыть';

  @override
  String get save => 'Сохранить';

  @override
  String get create => 'Создать';

  @override
  String get delete => 'Удалить';

  @override
  String get confirm => 'Подтвердить';

  @override
  String get copy => 'Копировать';

  @override
  String get copied => 'Скопировано';

  @override
  String get noData => 'Нет данных';

  @override
  String get requiredField => 'Обязательное поле';

  @override
  String get invalidJson => 'Введите корректный JSON-объект';

  @override
  String get invalidUrl => 'Введите корректный URL';

  @override
  String get operationFailed => 'Операция не выполнена';

  @override
  String get networkFailure => 'Сервер недоступен';

  @override
  String get unexpectedFailure => 'Произошла непредвиденная ошибка';

  @override
  String get storageFailure => 'Защищенное хранилище сессии недоступно';

  @override
  String get requestId => 'ID запроса';

  @override
  String get organization => 'Организация';

  @override
  String get deliveries => 'Доставки';

  @override
  String get events => 'События';

  @override
  String get endpoints => 'Endpoint\'ы';

  @override
  String get apiKeys => 'API-ключи';

  @override
  String get members => 'Участники';

  @override
  String get eventTester => 'Тест события';

  @override
  String get status => 'Статус';

  @override
  String get createdAt => 'Создано';

  @override
  String get occurredAt => 'Произошло';

  @override
  String get nextAttempt => 'Следующая попытка';

  @override
  String get attempts => 'Попытки';

  @override
  String get attemptNumber => 'Попытка';

  @override
  String get outcome => 'Результат';

  @override
  String get responseStatus => 'HTTP-статус';

  @override
  String get latency => 'Задержка';

  @override
  String get errorCode => 'Код ошибки';

  @override
  String get responsePreview => 'Ответ получателя';

  @override
  String get filters => 'Фильтры';

  @override
  String get allStatuses => 'Все статусы';

  @override
  String get loadMore => 'Загрузить еще';

  @override
  String get id => 'ID';

  @override
  String get name => 'Название';

  @override
  String get type => 'Тип';

  @override
  String get version => 'Версия';

  @override
  String get data => 'Данные';

  @override
  String get url => 'URL';

  @override
  String get eventTypes => 'Типы событий';

  @override
  String get enabled => 'Включен';

  @override
  String get disabled => 'Отключен';

  @override
  String get verify => 'Проверить';

  @override
  String get edit => 'Изменить';

  @override
  String get createEndpoint => 'Создать endpoint';

  @override
  String get editEndpoint => 'Изменить endpoint';

  @override
  String get deleteEndpointTitle => 'Удалить endpoint?';

  @override
  String get deleteEndpointBody =>
      'Ожидающие доставки для него могут быть отменены.';

  @override
  String get endpointSecretTitle => 'Секрет подписи';

  @override
  String get endpointSecretBody =>
      'Секрет показан один раз. Скопируйте его перед закрытием.';

  @override
  String get createApiKey => 'Создать API-ключ';

  @override
  String get revoke => 'Отозвать';

  @override
  String get revokeApiKeyTitle => 'Отозвать API-ключ?';

  @override
  String get apiKeySecretTitle => 'API-ключ';

  @override
  String get apiKeySecretBody =>
      'Ключ показан один раз. Скопируйте его перед закрытием.';

  @override
  String get scope => 'Scope';

  @override
  String get role => 'Роль';

  @override
  String get addMember => 'Добавить участника';

  @override
  String get changeRole => 'Изменить роль';

  @override
  String get removeMemberTitle => 'Удалить участника?';

  @override
  String get owner => 'Владелец';

  @override
  String get admin => 'Администратор';

  @override
  String get member => 'Участник';

  @override
  String get producerApiKey => 'Producer API-ключ';

  @override
  String get idempotencyKey => 'Ключ идемпотентности';

  @override
  String get sendEvent => 'Отправить событие';

  @override
  String get eventAccepted => 'Событие принято';

  @override
  String get deliveryCount => 'Создано доставок';

  @override
  String get replay => 'Повторить доставку';

  @override
  String get replayDeliveryTitle => 'Повторить доставку?';

  @override
  String get replayDeliveryBody => 'Новая доставка снова вызовет endpoint.';

  @override
  String get replayedRequest =>
      'Возвращен существующий идемпотентный результат';

  @override
  String get endpoint => 'Endpoint';

  @override
  String get event => 'Событие';

  @override
  String get delivery => 'Доставка';

  @override
  String get details => 'Детали';

  @override
  String get registrationComplete => 'Аккаунт создан. Войдите для продолжения.';

  @override
  String get passwordHint => 'Не менее 12 символов';

  @override
  String get memberAccountHint => 'Пользователь уже должен иметь аккаунт.';

  @override
  String get terminalOnly => 'Повтор доступен только для завершенной доставки';

  @override
  String get selectOrganization => 'Выберите организацию';

  @override
  String get sessionRestoring => 'Восстановление сессии';

  @override
  String get emptyOrganizations => 'Нет доступных организаций';

  @override
  String get payload => 'Payload';

  @override
  String get subscriptions => 'Подписки';

  @override
  String get prefix => 'Префикс';

  @override
  String get revoked => 'Отозван';

  @override
  String get active => 'Активен';

  @override
  String get pendingVerification => 'Ожидает проверки';
}
