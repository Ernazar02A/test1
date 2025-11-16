import 'package:flutter/material.dart';

import '../../core_ui/utils/validation_error_type.dart';
import '../generated/app_localizations.dart';

extension LocalizationExtension on BuildContext {
  L get l10n => L.of(this)!;

  Locale get currentLocale => Localizations.localeOf(this);

  L? get l10nOrNull => L.of(this);
}

extension ValidationErrorLocalization on ValidationErrorType {
  String toLocalizedString(BuildContext context) {
    switch (this) {
      case ValidationErrorType.blank:
        return context.l10n.blankError;
      case ValidationErrorType.suggestedPriceTooHigh:
        return context.l10n.suggestedPriceTooHigh;
      case ValidationErrorType.eightCharacters:
        return context.l10n.eightCharactersError;
      case ValidationErrorType.oneSpecial:
        return context.l10n.oneSpecialError;
      case ValidationErrorType.oneUppercase:
        return context.l10n.oneUppercaseError;
      case ValidationErrorType.oneDigit:
        return context.l10n.oneDigitError;
      case ValidationErrorType.mustNotContainEmail:
        return context.l10n.mustNotContainEmailError;
      case ValidationErrorType.wrongPassword:
        return context.l10n.wrongPasswordError;
      case ValidationErrorType.notLikeOldPassword:
        return context.l10n.notLikeOldPasswordError;
      case ValidationErrorType.invalidProvider:
        return context.l10n.invalidProviderError;
      case ValidationErrorType.userNotFound:
        return context.l10n.userNotFoundError;
      case ValidationErrorType.userAlreadyExists:
        return context.l10n.userAlreadyExistsError;
      case ValidationErrorType.invalidEmail:
        return context.l10n.invalidEmailError;
      case ValidationErrorType.emailAlreadyExist:
        return context.l10n.emailAlreadyExistError;
      case ValidationErrorType.phoneNumberAlreadyExist:
        return context.l10n.phoneNumberAlreadyExistError;
      case ValidationErrorType.incorrectCode:
        return context.l10n.incorrectCodeError;
      case ValidationErrorType.mismatchConfirmPassword:
        return context.l10n.mismatchConfirmPassword;
      case ValidationErrorType.wrongPasswordOrLogin:
        return context.l10n.wrongPasswordOrLogin;
      case ValidationErrorType.unknown:
        return context.l10n.unknownError;
      case ValidationErrorType.invalidPhone:
        return context.l10n.invalidPhoneError;
      case ValidationErrorType.endDateValidation:
        return 'End date must be at least 7 days from start date';
    }
  }
}
