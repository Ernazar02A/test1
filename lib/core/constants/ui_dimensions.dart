import 'package:flutter_screenutil/flutter_screenutil.dart';

/// UI dimensions и spacing константы для всего приложения
class UIDimensions {
  UIDimensions._();

  // Spacing
  static double get microSpacing => 4.w;
  static double get smallSpacing => 8.w;
  static double get spacing10 => 10.w;
  static double get defaultSpacing => 12.w;
  static double get mediumSpacing => 16.w;
  static double get largeSpacing => 24.w;
  static double get extraLargeSpacing => 32.w;

  // Border Radius
  static double get smallBorderRadius => 8.r;
  static double get defaultBorderRadius => 12.r;
  static double get largeBorderRadius => 16.r;

  // Container Padding
  static double get defaultContainerPadding => 16.w;

  // Icon Sizes
  static double get smallIconSize => 16.sp;
  static double get defaultIconSize => 24.sp;
  static double get largeIconSize => 48.sp;

  // Icon Container Sizes
  static double get iconContainerSize => 40.w;
  static double get largeIconContainerSize => 48.w;

  // Text Max Lines
  static const int maxExpandableLines = 4;

  // Image Sizes
  static double get imageListHeight => 160.h;
  static double get imageCardWidth => 200.w;

  // Map
  static double get mapPlaceholderHeight => 200.h;

  // Divider
  static double get dividerWidth => 1.w;
  static double get dividerHeight => 60.h;
  static double get smallDividerHeight => 24.h;
  static double get dividerThickness => 1.h;

  // Other
  static double get maxWidthForTextCalculation => 64.w;
}
