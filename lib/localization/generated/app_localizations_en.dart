// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class LEn extends L {
  LEn([String locale = 'en']) : super(locale);

  @override
  String get blankError => 'This field cannot be blank';

  @override
  String get eightCharactersError => 'Password must be at least 8 characters';

  @override
  String get oneSpecialError =>
      'Password must contain at least one special character';

  @override
  String get oneUppercaseError =>
      'Password must contain at least one uppercase letter';

  @override
  String get oneDigitError => 'Password must contain at least one digit';

  @override
  String get mustNotContainEmailError => 'Password must not contain your email';

  @override
  String get wrongPasswordError => 'Wrong password';

  @override
  String get notLikeOldPasswordError =>
      'New password must not be the same as the old password';

  @override
  String get invalidProviderError => 'Invalid provider';

  @override
  String get userNotFoundError => 'User not found';

  @override
  String get userAlreadyExistsError => 'User already exists';

  @override
  String get invalidEmailError => 'Invalid email address';

  @override
  String get emailAlreadyExistError => 'Email already exists';

  @override
  String get phoneNumberAlreadyExistError => 'Phone number already exists';

  @override
  String get incorrectCodeError => 'Incorrect code';

  @override
  String get mismatchConfirmPassword => 'Not similar password';

  @override
  String get suggestedPriceTooHigh =>
      'Предлогаемая цена должна быть не выше максимума и цены объекта';

  @override
  String get unknownError => 'Unknown error occurred';

  @override
  String get wrongPasswordOrLogin => 'Password is not valid';

  @override
  String get invalidPhoneError => 'Invalid number';
}
