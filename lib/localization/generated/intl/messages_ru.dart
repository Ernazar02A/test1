// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "blankError": MessageLookupByLibrary.simpleMessage(
      "Это поле не может быть пустым",
    ),
    "eightCharactersError": MessageLookupByLibrary.simpleMessage(
      "Пароль должен содержать не менее 8 символов",
    ),
    "emailAlreadyExistError": MessageLookupByLibrary.simpleMessage(
      "Email уже существует",
    ),
    "incorrectCodeError": MessageLookupByLibrary.simpleMessage("Неверный код"),
    "invalidEmailError": MessageLookupByLibrary.simpleMessage("Неверный email"),
    "invalidPhoneError": MessageLookupByLibrary.simpleMessage("Неверный номер"),
    "invalidProviderError": MessageLookupByLibrary.simpleMessage(
      "Неверный провайдер",
    ),
    "mismatchConfirmPassword": MessageLookupByLibrary.simpleMessage(
      "Пароли не совпадают",
    ),
    "mustNotContainEmailError": MessageLookupByLibrary.simpleMessage(
      "Пароль не должен содержать ваш email",
    ),
    "notLikeOldPasswordError": MessageLookupByLibrary.simpleMessage(
      "Новый пароль не должен совпадать со старым",
    ),
    "oneDigitError": MessageLookupByLibrary.simpleMessage(
      "Пароль должен содержать хотя бы одну цифру",
    ),
    "oneSpecialError": MessageLookupByLibrary.simpleMessage(
      "Пароль должен содержать хотя бы один специальный символ",
    ),
    "oneUppercaseError": MessageLookupByLibrary.simpleMessage(
      "Пароль должен содержать хотя бы одну заглавную букву",
    ),
    "phoneNumberAlreadyExistError": MessageLookupByLibrary.simpleMessage(
      "Номер телефона уже существует",
    ),
    "suggestedPriceTooHigh": MessageLookupByLibrary.simpleMessage(
      "Предлогаемая цена должна быть не выше максимума и цены объекта",
    ),
    "unknownError": MessageLookupByLibrary.simpleMessage(
      "Произошла неизвестная ошибка",
    ),
    "userAlreadyExistsError": MessageLookupByLibrary.simpleMessage(
      "Пользователь уже существует",
    ),
    "userNotFoundError": MessageLookupByLibrary.simpleMessage(
      "Пользователь не найден",
    ),
    "wrongPasswordError": MessageLookupByLibrary.simpleMessage(
      "Неверный пароль",
    ),
    "wrongPasswordOrLogin": MessageLookupByLibrary.simpleMessage(
      "Неверный пароль",
    ),
  };
}
