// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "blankError": MessageLookupByLibrary.simpleMessage(
      "This field cannot be blank",
    ),
    "eightCharactersError": MessageLookupByLibrary.simpleMessage(
      "Password must be at least 8 characters",
    ),
    "emailAlreadyExistError": MessageLookupByLibrary.simpleMessage(
      "Email already exists",
    ),
    "incorrectCodeError": MessageLookupByLibrary.simpleMessage(
      "Incorrect code",
    ),
    "invalidEmailError": MessageLookupByLibrary.simpleMessage(
      "Invalid email address",
    ),
    "invalidPhoneError": MessageLookupByLibrary.simpleMessage("Invalid number"),
    "invalidProviderError": MessageLookupByLibrary.simpleMessage(
      "Invalid provider",
    ),
    "mismatchConfirmPassword": MessageLookupByLibrary.simpleMessage(
      "Not similar password",
    ),
    "mustNotContainEmailError": MessageLookupByLibrary.simpleMessage(
      "Password must not contain your email",
    ),
    "notLikeOldPasswordError": MessageLookupByLibrary.simpleMessage(
      "New password must not be the same as the old password",
    ),
    "oneDigitError": MessageLookupByLibrary.simpleMessage(
      "Password must contain at least one digit",
    ),
    "oneSpecialError": MessageLookupByLibrary.simpleMessage(
      "Password must contain at least one special character",
    ),
    "oneUppercaseError": MessageLookupByLibrary.simpleMessage(
      "Password must contain at least one uppercase letter",
    ),
    "phoneNumberAlreadyExistError": MessageLookupByLibrary.simpleMessage(
      "Phone number already exists",
    ),
    "suggestedPriceTooHigh": MessageLookupByLibrary.simpleMessage(
      "Предлогаемая цена должна быть не выше максимума и цены объекта",
    ),
    "unknownError": MessageLookupByLibrary.simpleMessage(
      "Unknown error occurred",
    ),
    "userAlreadyExistsError": MessageLookupByLibrary.simpleMessage(
      "User already exists",
    ),
    "userNotFoundError": MessageLookupByLibrary.simpleMessage("User not found"),
    "wrongPasswordError": MessageLookupByLibrary.simpleMessage(
      "Wrong password",
    ),
    "wrongPasswordOrLogin": MessageLookupByLibrary.simpleMessage(
      "Password is not valid",
    ),
  };
}
