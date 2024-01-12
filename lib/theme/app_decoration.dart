import 'package:flutter/material.dart';
import 'package:rafi_s_application3/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Outline decorations
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: appTheme.gray50,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineSecondaryContainer => BoxDecoration(
        color: appTheme.gray50,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.secondaryContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              -61,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineSecondaryContainer1 => BoxDecoration(
        color: appTheme.gray50,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.secondaryContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder29 => BorderRadius.circular(
        29.h,
      );
  static BorderRadius get circleBorder44 => BorderRadius.circular(
        44.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder33 => BorderRadius.circular(
        33.h,
      );
  static BorderRadius get roundedBorder38 => BorderRadius.circular(
        38.h,
      );
  static BorderRadius get roundedBorder50 => BorderRadius.circular(
        50.h,
      );
  static BorderRadius get roundedBorder70 => BorderRadius.circular(
        70.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
