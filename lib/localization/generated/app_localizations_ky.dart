// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kirghiz Kyrgyz (`ky`).
class LKy extends L {
  LKy([String locale = 'ky']) : super(locale);

  @override
  String get blankError => 'Бул талаа бош болбошу керек';

  @override
  String get eightCharactersError => 'Сырсөз кеминде 8 белгиден турушу керек';

  @override
  String get oneSpecialError =>
      'Сырсөздө жок дегенде бир атайын белги болушу керек';

  @override
  String get oneUppercaseError =>
      'Сырсөздө жок дегенде бир баш тамга болушу керек';

  @override
  String get oneDigitError => 'Сырсөздө жок дегенде бир сан болушу керек';

  @override
  String get mustNotContainEmailError => 'Сырсөздө сиздин email болбошу керек';

  @override
  String get wrongPasswordError => 'Туура эмес сырсөз';

  @override
  String get notLikeOldPasswordError =>
      'Жаңы сырсөз эскисине окшош болбошу керек';

  @override
  String get invalidProviderError => 'Туура эмес провайдер';

  @override
  String get userNotFoundError => 'Колдонуучу табылган жок';

  @override
  String get userAlreadyExistsError => 'Колдонуучу мурунтан бар';

  @override
  String get invalidEmailError => 'Туура эмес email';

  @override
  String get emailAlreadyExistError => 'Email мурунтан бар';

  @override
  String get phoneNumberAlreadyExistError => 'Телефон номери мурунтан бар';

  @override
  String get incorrectCodeError => 'Туура эмес код';

  @override
  String get mismatchConfirmPassword => 'Сыр сөздөр окшош эмес';

  @override
  String get suggestedPriceTooHigh =>
      'Предлогаемая цена должна быть не выше максимума и цены объекта';

  @override
  String get unknownError => 'Белгисиз ката кетти';

  @override
  String get wrongPasswordOrLogin => 'Сырсөз туура эмес';

  @override
  String get invalidPhoneError => 'Номер туура эмес';
}
