// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `This field cannot be blank`
  String get blankError {
    return Intl.message(
      'This field cannot be blank',
      name: 'blankError',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters`
  String get eightCharactersError {
    return Intl.message(
      'Password must be at least 8 characters',
      name: 'eightCharactersError',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one special character`
  String get oneSpecialError {
    return Intl.message(
      'Password must contain at least one special character',
      name: 'oneSpecialError',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one uppercase letter`
  String get oneUppercaseError {
    return Intl.message(
      'Password must contain at least one uppercase letter',
      name: 'oneUppercaseError',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one digit`
  String get oneDigitError {
    return Intl.message(
      'Password must contain at least one digit',
      name: 'oneDigitError',
      desc: '',
      args: [],
    );
  }

  /// `Password must not contain your email`
  String get mustNotContainEmailError {
    return Intl.message(
      'Password must not contain your email',
      name: 'mustNotContainEmailError',
      desc: '',
      args: [],
    );
  }

  /// `Wrong password`
  String get wrongPasswordError {
    return Intl.message(
      'Wrong password',
      name: 'wrongPasswordError',
      desc: '',
      args: [],
    );
  }

  /// `New password must not be the same as the old password`
  String get notLikeOldPasswordError {
    return Intl.message(
      'New password must not be the same as the old password',
      name: 'notLikeOldPasswordError',
      desc: '',
      args: [],
    );
  }

  /// `Invalid provider`
  String get invalidProviderError {
    return Intl.message(
      'Invalid provider',
      name: 'invalidProviderError',
      desc: '',
      args: [],
    );
  }

  /// `User not found`
  String get userNotFoundError {
    return Intl.message(
      'User not found',
      name: 'userNotFoundError',
      desc: '',
      args: [],
    );
  }

  /// `User already exists`
  String get userAlreadyExistsError {
    return Intl.message(
      'User already exists',
      name: 'userAlreadyExistsError',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email address`
  String get invalidEmailError {
    return Intl.message(
      'Invalid email address',
      name: 'invalidEmailError',
      desc: '',
      args: [],
    );
  }

  /// `Email already exists`
  String get emailAlreadyExistError {
    return Intl.message(
      'Email already exists',
      name: 'emailAlreadyExistError',
      desc: '',
      args: [],
    );
  }

  /// `Phone number already exists`
  String get phoneNumberAlreadyExistError {
    return Intl.message(
      'Phone number already exists',
      name: 'phoneNumberAlreadyExistError',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect code`
  String get incorrectCodeError {
    return Intl.message(
      'Incorrect code',
      name: 'incorrectCodeError',
      desc: '',
      args: [],
    );
  }

  /// `Not similar password`
  String get mismatchConfirmPassword {
    return Intl.message(
      'Not similar password',
      name: 'mismatchConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Предлогаемая цена должна быть не выше максимума и цены объекта`
  String get suggestedPriceTooHigh {
    return Intl.message(
      'Предлогаемая цена должна быть не выше максимума и цены объекта',
      name: 'suggestedPriceTooHigh',
      desc: '',
      args: [],
    );
  }

  /// `Unknown error occurred`
  String get unknownError {
    return Intl.message(
      'Unknown error occurred',
      name: 'unknownError',
      desc: '',
      args: [],
    );
  }

  /// `Password is not valid`
  String get wrongPasswordOrLogin {
    return Intl.message(
      'Password is not valid',
      name: 'wrongPasswordOrLogin',
      desc: '',
      args: [],
    );
  }

  /// `Invalid number`
  String get invalidPhoneError {
    return Intl.message(
      'Invalid number',
      name: 'invalidPhoneError',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ky'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
