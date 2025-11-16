import 'package:flutter/material.dart';
import 'package:test1/core_ui/assets/app_colors.dart';

class AppShadows {
  AppShadows._();

  static List<BoxShadow> get cardShadow => [
        BoxShadow(
          color: AppColors.black.withValues(alpha: 0.12),
          blurRadius: 8,
          offset: const Offset(0, 6),
          spreadRadius: 0,
        ),
      ];

  static List<BoxShadow> get lightShadow => [
        BoxShadow(
          color: AppColors.black.withValues(alpha: 0.08),
          blurRadius: 4,
          offset: const Offset(0, 2),
          spreadRadius: 0,
        ),
      ];

  static List<BoxShadow> get mediumShadow => [
        BoxShadow(
          color: AppColors.black.withValues(alpha: 0.16),
          blurRadius: 12,
          offset: const Offset(0, 8),
          spreadRadius: 0,
        ),
      ];

  static List<BoxShadow> get listItemShadow => [
        BoxShadow(
          color: AppColors.black10,
          offset: const Offset(0, 3),
          blurRadius: 4,
          spreadRadius: 0,
        ),
      ];

  static List<BoxShadow> get smallCardShadow => [
        BoxShadow(
          color: AppColors.black10,
          offset: const Offset(0, 2),
          blurRadius: 4,
        ),
      ];
}
