import 'package:flutter/material.dart';

import 'app_typography.dart';

class AppTypographyScheme {
  AppTypographyScheme._();

  static TextTheme textTheme = TextTheme(
    displayLarge: AppTypography.titleHuge,
    displayMedium: AppTypography.titleHuge,
    displaySmall: AppTypography.titleLarge,
    headlineLarge: AppTypography.titleLarge,
    headlineMedium: AppTypography.titleBig,
    headlineSmall: AppTypography.titleMedium,
    titleLarge: AppTypography.titleLarge,
    titleMedium: AppTypography.titleMedium,
    titleSmall: AppTypography.titleSmall,
    bodyLarge: AppTypography.labelLarge,
    bodyMedium: AppTypography.labelMedium,
    bodySmall: AppTypography.labelSmall,
    labelLarge: AppTypography.labelLarge,
    labelMedium: AppTypography.labelMedium,
    labelSmall: AppTypography.labelSmall,
  );
}