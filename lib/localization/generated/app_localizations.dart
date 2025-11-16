import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ky.dart';
import 'app_localizations_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of L
/// returned by `L.of(context)`.
///
/// Applications need to include `L.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: L.localizationsDelegates,
///   supportedLocales: L.supportedLocales,
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
/// be consistent with the languages listed in the L.supportedLocales
/// property.
abstract class L {
  L(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static L? of(BuildContext context) {
    return Localizations.of<L>(context, L);
  }

  static const LocalizationsDelegate<L> delegate = _LDelegate();

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
    Locale('ky'),
    Locale('ru')
  ];

  /// No description provided for @blankError.
  ///
  /// In en, this message translates to:
  /// **'This field cannot be blank'**
  String get blankError;

  /// No description provided for @eightCharactersError.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters'**
  String get eightCharactersError;

  /// No description provided for @oneSpecialError.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one special character'**
  String get oneSpecialError;

  /// No description provided for @oneUppercaseError.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one uppercase letter'**
  String get oneUppercaseError;

  /// No description provided for @oneDigitError.
  ///
  /// In en, this message translates to:
  /// **'Password must contain at least one digit'**
  String get oneDigitError;

  /// No description provided for @mustNotContainEmailError.
  ///
  /// In en, this message translates to:
  /// **'Password must not contain your email'**
  String get mustNotContainEmailError;

  /// No description provided for @wrongPasswordError.
  ///
  /// In en, this message translates to:
  /// **'Wrong password'**
  String get wrongPasswordError;

  /// No description provided for @notLikeOldPasswordError.
  ///
  /// In en, this message translates to:
  /// **'New password must not be the same as the old password'**
  String get notLikeOldPasswordError;

  /// No description provided for @invalidProviderError.
  ///
  /// In en, this message translates to:
  /// **'Invalid provider'**
  String get invalidProviderError;

  /// No description provided for @userNotFoundError.
  ///
  /// In en, this message translates to:
  /// **'User not found'**
  String get userNotFoundError;

  /// No description provided for @userAlreadyExistsError.
  ///
  /// In en, this message translates to:
  /// **'User already exists'**
  String get userAlreadyExistsError;

  /// No description provided for @invalidEmailError.
  ///
  /// In en, this message translates to:
  /// **'Invalid email address'**
  String get invalidEmailError;

  /// No description provided for @emailAlreadyExistError.
  ///
  /// In en, this message translates to:
  /// **'Email already exists'**
  String get emailAlreadyExistError;

  /// No description provided for @phoneNumberAlreadyExistError.
  ///
  /// In en, this message translates to:
  /// **'Phone number already exists'**
  String get phoneNumberAlreadyExistError;

  /// No description provided for @incorrectCodeError.
  ///
  /// In en, this message translates to:
  /// **'Incorrect code'**
  String get incorrectCodeError;

  /// No description provided for @mismatchConfirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Not similar password'**
  String get mismatchConfirmPassword;

  /// No description provided for @suggestedPriceTooHigh.
  ///
  /// In en, this message translates to:
  /// **'Предлогаемая цена должна быть не выше максимума и цены объекта'**
  String get suggestedPriceTooHigh;

  /// No description provided for @unknownError.
  ///
  /// In en, this message translates to:
  /// **'Unknown error occurred'**
  String get unknownError;

  /// No description provided for @wrongPasswordOrLogin.
  ///
  /// In en, this message translates to:
  /// **'Password is not valid'**
  String get wrongPasswordOrLogin;

  /// No description provided for @invalidPhoneError.
  ///
  /// In en, this message translates to:
  /// **'Invalid number'**
  String get invalidPhoneError;
}

class _LDelegate extends LocalizationsDelegate<L> {
  const _LDelegate();

  @override
  Future<L> load(Locale locale) {
    return SynchronousFuture<L>(lookupL(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ky', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_LDelegate old) => false;
}

L lookupL(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return LEn();
    case 'ky':
      return LKy();
    case 'ru':
      return LRu();
  }

  throw FlutterError(
      'L.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
