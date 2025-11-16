import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../assets/app_colors.dart';

class AppTypography {
  AppTypography._();

  static  final double _titleHugeSize = 20.sp;
  static final double _titleLargeSize = 18.sp;
  static final double _titleBigSize = 16.sp;
  static final double _titleMediumSize = 14.sp;
  static final double _titleSmallSize = 12.sp;

  static final double _labelLargeSize = 16.sp;
  static final double _labelMediumSize = 14.sp;
  static final double _labelSmallSize = 12.sp;

  static double _getLetterSpacing(double fontSize, {double ratio = -0.02}) {
    return fontSize * (ratio / 100);
  }

  static double _getLineHeight(double fontSize, {double height = 22}) {
    return height / fontSize;
  }

  static final TextStyle titleHuge = TextStyle(
    fontSize: _titleHugeSize,
    fontWeight: FontWeight.w600,
    height: _getLineHeight(_titleHugeSize),
    color: AppColors.textPrimary,
  );

  static final TextStyle titleLarge = TextStyle(
    fontSize: _titleLargeSize,
    fontWeight: FontWeight.w600,
    height: _getLineHeight(_titleLargeSize),
    color: AppColors.textPrimary,
  );

  static final TextStyle titleBig = TextStyle(
    fontSize: _titleBigSize,
    fontWeight: FontWeight.w600,
    height: _getLineHeight(_titleBigSize),
    color: AppColors.textPrimary,
  );

  static final TextStyle titleMedium = TextStyle(
    fontSize: _titleMediumSize,
    fontWeight: FontWeight.w500,
    height: _getLineHeight(_titleMediumSize),
    color: AppColors.textPrimary,
  );

  static final TextStyle titleSmall = TextStyle(
    fontSize: _titleSmallSize,
    fontWeight: FontWeight.w400,
    height: _getLineHeight(_titleSmallSize),
    color: AppColors.textPrimary,
  );

  static final TextStyle labelLarge = TextStyle(
    fontSize: _labelLargeSize,
    fontWeight: FontWeight.w400,
    height: _getLineHeight(_labelLargeSize, height: 18),
    color: AppColors.textSecondary,
  );

  static final TextStyle labelMedium = TextStyle(
    fontSize: _labelMediumSize,
    fontWeight: FontWeight.w400,
    height: _getLineHeight(_labelMediumSize, height: 18),
    color: AppColors.textSecondary,
  );

  static final TextStyle labelBlackMedium = TextStyle(
    fontSize: _labelMediumSize,
    fontWeight: FontWeight.w400,
    height: _getLineHeight(_labelMediumSize, height: 18),
    color: AppColors.textPrimary,
  );

  static final TextStyle labelSmall = TextStyle(
    fontSize: _labelSmallSize,
    fontWeight: FontWeight.w400,
    height: _getLineHeight(_labelSmallSize, height: 18),
    color: AppColors.textSecondary,
  );
}
