import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Relay Console'**
  String get appTitle;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get signIn;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create account'**
  String get createAccount;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @organizationName.
  ///
  /// In en, this message translates to:
  /// **'Organization name'**
  String get organizationName;

  /// No description provided for @noAccount.
  ///
  /// In en, this message translates to:
  /// **'Create an account'**
  String get noAccount;

  /// No description provided for @haveAccount.
  ///
  /// In en, this message translates to:
  /// **'Back to sign in'**
  String get haveAccount;

  /// No description provided for @signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get signOut;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading'**
  String get loading;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @refresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get refresh;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @create.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get create;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// No description provided for @copied.
  ///
  /// In en, this message translates to:
  /// **'Copied'**
  String get copied;

  /// No description provided for @noData.
  ///
  /// In en, this message translates to:
  /// **'No data'**
  String get noData;

  /// No description provided for @requiredField.
  ///
  /// In en, this message translates to:
  /// **'Required field'**
  String get requiredField;

  /// No description provided for @invalidJson.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid JSON object'**
  String get invalidJson;

  /// No description provided for @invalidUrl.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid URL'**
  String get invalidUrl;

  /// No description provided for @operationFailed.
  ///
  /// In en, this message translates to:
  /// **'The operation failed'**
  String get operationFailed;

  /// No description provided for @networkFailure.
  ///
  /// In en, this message translates to:
  /// **'Cannot reach the server'**
  String get networkFailure;

  /// No description provided for @unexpectedFailure.
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occurred'**
  String get unexpectedFailure;

  /// No description provided for @storageFailure.
  ///
  /// In en, this message translates to:
  /// **'Secure session storage is unavailable'**
  String get storageFailure;

  /// No description provided for @requestId.
  ///
  /// In en, this message translates to:
  /// **'Request ID'**
  String get requestId;

  /// No description provided for @organization.
  ///
  /// In en, this message translates to:
  /// **'Organization'**
  String get organization;

  /// No description provided for @deliveries.
  ///
  /// In en, this message translates to:
  /// **'Deliveries'**
  String get deliveries;

  /// No description provided for @events.
  ///
  /// In en, this message translates to:
  /// **'Events'**
  String get events;

  /// No description provided for @endpoints.
  ///
  /// In en, this message translates to:
  /// **'Endpoints'**
  String get endpoints;

  /// No description provided for @apiKeys.
  ///
  /// In en, this message translates to:
  /// **'API keys'**
  String get apiKeys;

  /// No description provided for @members.
  ///
  /// In en, this message translates to:
  /// **'Members'**
  String get members;

  /// No description provided for @eventTester.
  ///
  /// In en, this message translates to:
  /// **'Event tester'**
  String get eventTester;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @createdAt.
  ///
  /// In en, this message translates to:
  /// **'Created'**
  String get createdAt;

  /// No description provided for @occurredAt.
  ///
  /// In en, this message translates to:
  /// **'Occurred'**
  String get occurredAt;

  /// No description provided for @nextAttempt.
  ///
  /// In en, this message translates to:
  /// **'Next attempt'**
  String get nextAttempt;

  /// No description provided for @attempts.
  ///
  /// In en, this message translates to:
  /// **'Attempts'**
  String get attempts;

  /// No description provided for @attemptNumber.
  ///
  /// In en, this message translates to:
  /// **'Attempt'**
  String get attemptNumber;

  /// No description provided for @outcome.
  ///
  /// In en, this message translates to:
  /// **'Outcome'**
  String get outcome;

  /// No description provided for @responseStatus.
  ///
  /// In en, this message translates to:
  /// **'HTTP status'**
  String get responseStatus;

  /// No description provided for @latency.
  ///
  /// In en, this message translates to:
  /// **'Latency'**
  String get latency;

  /// No description provided for @errorCode.
  ///
  /// In en, this message translates to:
  /// **'Error code'**
  String get errorCode;

  /// No description provided for @responsePreview.
  ///
  /// In en, this message translates to:
  /// **'Response preview'**
  String get responsePreview;

  /// No description provided for @filters.
  ///
  /// In en, this message translates to:
  /// **'Filters'**
  String get filters;

  /// No description provided for @allStatuses.
  ///
  /// In en, this message translates to:
  /// **'All statuses'**
  String get allStatuses;

  /// No description provided for @loadMore.
  ///
  /// In en, this message translates to:
  /// **'Load more'**
  String get loadMore;

  /// No description provided for @id.
  ///
  /// In en, this message translates to:
  /// **'ID'**
  String get id;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @type.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get type;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// No description provided for @data.
  ///
  /// In en, this message translates to:
  /// **'Data'**
  String get data;

  /// No description provided for @url.
  ///
  /// In en, this message translates to:
  /// **'URL'**
  String get url;

  /// No description provided for @eventTypes.
  ///
  /// In en, this message translates to:
  /// **'Event types'**
  String get eventTypes;

  /// No description provided for @enabled.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get enabled;

  /// No description provided for @disabled.
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get disabled;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @createEndpoint.
  ///
  /// In en, this message translates to:
  /// **'Create endpoint'**
  String get createEndpoint;

  /// No description provided for @editEndpoint.
  ///
  /// In en, this message translates to:
  /// **'Edit endpoint'**
  String get editEndpoint;

  /// No description provided for @deleteEndpointTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete endpoint?'**
  String get deleteEndpointTitle;

  /// No description provided for @deleteEndpointBody.
  ///
  /// In en, this message translates to:
  /// **'Pending deliveries for this endpoint may be cancelled.'**
  String get deleteEndpointBody;

  /// No description provided for @endpointSecretTitle.
  ///
  /// In en, this message translates to:
  /// **'Signing secret'**
  String get endpointSecretTitle;

  /// No description provided for @endpointSecretBody.
  ///
  /// In en, this message translates to:
  /// **'This secret is shown once. Copy it before closing.'**
  String get endpointSecretBody;

  /// No description provided for @createApiKey.
  ///
  /// In en, this message translates to:
  /// **'Create API key'**
  String get createApiKey;

  /// No description provided for @revoke.
  ///
  /// In en, this message translates to:
  /// **'Revoke'**
  String get revoke;

  /// No description provided for @revokeApiKeyTitle.
  ///
  /// In en, this message translates to:
  /// **'Revoke API key?'**
  String get revokeApiKeyTitle;

  /// No description provided for @apiKeySecretTitle.
  ///
  /// In en, this message translates to:
  /// **'API key'**
  String get apiKeySecretTitle;

  /// No description provided for @apiKeySecretBody.
  ///
  /// In en, this message translates to:
  /// **'This key is shown once. Copy it before closing.'**
  String get apiKeySecretBody;

  /// No description provided for @scope.
  ///
  /// In en, this message translates to:
  /// **'Scope'**
  String get scope;

  /// No description provided for @role.
  ///
  /// In en, this message translates to:
  /// **'Role'**
  String get role;

  /// No description provided for @addMember.
  ///
  /// In en, this message translates to:
  /// **'Add member'**
  String get addMember;

  /// No description provided for @changeRole.
  ///
  /// In en, this message translates to:
  /// **'Change role'**
  String get changeRole;

  /// No description provided for @removeMemberTitle.
  ///
  /// In en, this message translates to:
  /// **'Remove member?'**
  String get removeMemberTitle;

  /// No description provided for @owner.
  ///
  /// In en, this message translates to:
  /// **'Owner'**
  String get owner;

  /// No description provided for @admin.
  ///
  /// In en, this message translates to:
  /// **'Admin'**
  String get admin;

  /// No description provided for @member.
  ///
  /// In en, this message translates to:
  /// **'Member'**
  String get member;

  /// No description provided for @producerApiKey.
  ///
  /// In en, this message translates to:
  /// **'Producer API key'**
  String get producerApiKey;

  /// No description provided for @idempotencyKey.
  ///
  /// In en, this message translates to:
  /// **'Idempotency key'**
  String get idempotencyKey;

  /// No description provided for @sendEvent.
  ///
  /// In en, this message translates to:
  /// **'Send event'**
  String get sendEvent;

  /// No description provided for @eventAccepted.
  ///
  /// In en, this message translates to:
  /// **'Event accepted'**
  String get eventAccepted;

  /// No description provided for @deliveryCount.
  ///
  /// In en, this message translates to:
  /// **'Deliveries created'**
  String get deliveryCount;

  /// No description provided for @replay.
  ///
  /// In en, this message translates to:
  /// **'Replay'**
  String get replay;

  /// No description provided for @replayDeliveryTitle.
  ///
  /// In en, this message translates to:
  /// **'Replay delivery?'**
  String get replayDeliveryTitle;

  /// No description provided for @replayDeliveryBody.
  ///
  /// In en, this message translates to:
  /// **'A new delivery will call the endpoint again.'**
  String get replayDeliveryBody;

  /// No description provided for @replayedRequest.
  ///
  /// In en, this message translates to:
  /// **'The existing idempotent result was returned'**
  String get replayedRequest;

  /// No description provided for @endpoint.
  ///
  /// In en, this message translates to:
  /// **'Endpoint'**
  String get endpoint;

  /// No description provided for @event.
  ///
  /// In en, this message translates to:
  /// **'Event'**
  String get event;

  /// No description provided for @delivery.
  ///
  /// In en, this message translates to:
  /// **'Delivery'**
  String get delivery;

  /// No description provided for @details.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get details;

  /// No description provided for @registrationComplete.
  ///
  /// In en, this message translates to:
  /// **'Account created. Sign in to continue.'**
  String get registrationComplete;

  /// No description provided for @passwordHint.
  ///
  /// In en, this message translates to:
  /// **'At least 12 characters'**
  String get passwordHint;

  /// No description provided for @memberAccountHint.
  ///
  /// In en, this message translates to:
  /// **'The user must already have an account.'**
  String get memberAccountHint;

  /// No description provided for @terminalOnly.
  ///
  /// In en, this message translates to:
  /// **'Only terminal deliveries can be replayed'**
  String get terminalOnly;

  /// No description provided for @selectOrganization.
  ///
  /// In en, this message translates to:
  /// **'Select an organization'**
  String get selectOrganization;

  /// No description provided for @sessionRestoring.
  ///
  /// In en, this message translates to:
  /// **'Restoring session'**
  String get sessionRestoring;

  /// No description provided for @emptyOrganizations.
  ///
  /// In en, this message translates to:
  /// **'No organizations are available'**
  String get emptyOrganizations;

  /// No description provided for @payload.
  ///
  /// In en, this message translates to:
  /// **'Payload'**
  String get payload;

  /// No description provided for @subscriptions.
  ///
  /// In en, this message translates to:
  /// **'Subscriptions'**
  String get subscriptions;

  /// No description provided for @prefix.
  ///
  /// In en, this message translates to:
  /// **'Prefix'**
  String get prefix;

  /// No description provided for @revoked.
  ///
  /// In en, this message translates to:
  /// **'Revoked'**
  String get revoked;

  /// No description provided for @active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get active;

  /// No description provided for @pendingVerification.
  ///
  /// In en, this message translates to:
  /// **'Pending verification'**
  String get pendingVerification;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'ru':
      return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
