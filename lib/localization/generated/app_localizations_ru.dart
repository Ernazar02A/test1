// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class LRu extends L {
  LRu([String locale = 'ru']) : super(locale);

  @override
  String get blankError => 'Это поле не может быть пустым';

  @override
  String get eightCharactersError =>
      'Пароль должен содержать не менее 8 символов';

  @override
  String get oneSpecialError =>
      'Пароль должен содержать хотя бы один специальный символ';

  @override
  String get oneUppercaseError =>
      'Пароль должен содержать хотя бы одну заглавную букву';

  @override
  String get oneDigitError => 'Пароль должен содержать хотя бы одну цифру';

  @override
  String get mustNotContainEmailError => 'Пароль не должен содержать ваш email';

  @override
  String get wrongPasswordError => 'Неверный пароль';

  @override
  String get notLikeOldPasswordError =>
      'Новый пароль не должен совпадать со старым';

  @override
  String get invalidProviderError => 'Неверный провайдер';

  @override
  String get userNotFoundError => 'Пользователь не найден';

  @override
  String get userAlreadyExistsError => 'Пользователь уже существует';

  @override
  String get invalidEmailError => 'Неверный email';

  @override
  String get emailAlreadyExistError => 'Email уже существует';

  @override
  String get phoneNumberAlreadyExistError => 'Номер телефона уже существует';

  @override
  String get incorrectCodeError => 'Неверный код';

  @override
  String get mismatchConfirmPassword => 'Пароли не совпадают';

  @override
  String get suggestedPriceTooHigh =>
      'Предлогаемая цена должна быть не выше максимума и цены объекта';

  @override
  String get unknownError => 'Произошла неизвестная ошибка';

  @override
  String get wrongPasswordOrLogin => 'Неверный пароль';

  @override
  String get invalidPhoneError => 'Неверный номер';
}
