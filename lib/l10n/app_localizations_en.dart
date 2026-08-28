// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Relay Console';

  @override
  String get signIn => 'Sign in';

  @override
  String get createAccount => 'Create account';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get organizationName => 'Organization name';

  @override
  String get noAccount => 'Create an account';

  @override
  String get haveAccount => 'Back to sign in';

  @override
  String get signOut => 'Sign out';

  @override
  String get loading => 'Loading';

  @override
  String get retry => 'Retry';

  @override
  String get refresh => 'Refresh';

  @override
  String get cancel => 'Cancel';

  @override
  String get close => 'Close';

  @override
  String get save => 'Save';

  @override
  String get create => 'Create';

  @override
  String get delete => 'Delete';

  @override
  String get confirm => 'Confirm';

  @override
  String get copy => 'Copy';

  @override
  String get copied => 'Copied';

  @override
  String get noData => 'No data';

  @override
  String get requiredField => 'Required field';

  @override
  String get invalidJson => 'Enter a valid JSON object';

  @override
  String get invalidUrl => 'Enter a valid URL';

  @override
  String get operationFailed => 'The operation failed';

  @override
  String get networkFailure => 'Cannot reach the server';

  @override
  String get unexpectedFailure => 'An unexpected error occurred';

  @override
  String get storageFailure => 'Secure session storage is unavailable';

  @override
  String get requestId => 'Request ID';

  @override
  String get organization => 'Organization';

  @override
  String get deliveries => 'Deliveries';

  @override
  String get events => 'Events';

  @override
  String get endpoints => 'Endpoints';

  @override
  String get apiKeys => 'API keys';

  @override
  String get members => 'Members';

  @override
  String get eventTester => 'Event tester';

  @override
  String get status => 'Status';

  @override
  String get createdAt => 'Created';

  @override
  String get occurredAt => 'Occurred';

  @override
  String get nextAttempt => 'Next attempt';

  @override
  String get attempts => 'Attempts';

  @override
  String get attemptNumber => 'Attempt';

  @override
  String get outcome => 'Outcome';

  @override
  String get responseStatus => 'HTTP status';

  @override
  String get latency => 'Latency';

  @override
  String get errorCode => 'Error code';

  @override
  String get responsePreview => 'Response preview';

  @override
  String get filters => 'Filters';

  @override
  String get allStatuses => 'All statuses';

  @override
  String get loadMore => 'Load more';

  @override
  String get id => 'ID';

  @override
  String get name => 'Name';

  @override
  String get type => 'Type';

  @override
  String get version => 'Version';

  @override
  String get data => 'Data';

  @override
  String get url => 'URL';

  @override
  String get eventTypes => 'Event types';

  @override
  String get enabled => 'Enabled';

  @override
  String get disabled => 'Disabled';

  @override
  String get verify => 'Verify';

  @override
  String get edit => 'Edit';

  @override
  String get createEndpoint => 'Create endpoint';

  @override
  String get editEndpoint => 'Edit endpoint';

  @override
  String get deleteEndpointTitle => 'Delete endpoint?';

  @override
  String get deleteEndpointBody =>
      'Pending deliveries for this endpoint may be cancelled.';

  @override
  String get endpointSecretTitle => 'Signing secret';

  @override
  String get endpointSecretBody =>
      'This secret is shown once. Copy it before closing.';

  @override
  String get createApiKey => 'Create API key';

  @override
  String get revoke => 'Revoke';

  @override
  String get revokeApiKeyTitle => 'Revoke API key?';

  @override
  String get apiKeySecretTitle => 'API key';

  @override
  String get apiKeySecretBody =>
      'This key is shown once. Copy it before closing.';

  @override
  String get scope => 'Scope';

  @override
  String get role => 'Role';

  @override
  String get addMember => 'Add member';

  @override
  String get changeRole => 'Change role';

  @override
  String get removeMemberTitle => 'Remove member?';

  @override
  String get owner => 'Owner';

  @override
  String get admin => 'Admin';

  @override
  String get member => 'Member';

  @override
  String get producerApiKey => 'Producer API key';

  @override
  String get idempotencyKey => 'Idempotency key';

  @override
  String get sendEvent => 'Send event';

  @override
  String get eventAccepted => 'Event accepted';

  @override
  String get deliveryCount => 'Deliveries created';

  @override
  String get replay => 'Replay';

  @override
  String get replayDeliveryTitle => 'Replay delivery?';

  @override
  String get replayDeliveryBody =>
      'A new delivery will call the endpoint again.';

  @override
  String get replayedRequest => 'The existing idempotent result was returned';

  @override
  String get endpoint => 'Endpoint';

  @override
  String get event => 'Event';

  @override
  String get delivery => 'Delivery';

  @override
  String get details => 'Details';

  @override
  String get registrationComplete => 'Account created. Sign in to continue.';

  @override
  String get passwordHint => 'At least 12 characters';

  @override
  String get memberAccountHint => 'The user must already have an account.';

  @override
  String get terminalOnly => 'Only terminal deliveries can be replayed';

  @override
  String get selectOrganization => 'Select an organization';

  @override
  String get sessionRestoring => 'Restoring session';

  @override
  String get emptyOrganizations => 'No organizations are available';

  @override
  String get payload => 'Payload';

  @override
  String get subscriptions => 'Subscriptions';

  @override
  String get prefix => 'Prefix';

  @override
  String get revoked => 'Revoked';

  @override
  String get active => 'Active';

  @override
  String get pendingVerification => 'Pending verification';
}
