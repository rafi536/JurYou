import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Display text style
  static get displayMediumPrimary => theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 48.fSize,
      );
  // Headline text style
  static get headlineSmall25 => theme.textTheme.headlineSmall!.copyWith(
        fontSize: 25.fSize,
      );
  // Title text style
  static get titleLarge7f000000 => theme.textTheme.titleLarge!.copyWith(
        color: Color(0X7F000000),
      );
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontWeight: FontWeight.w600,
      );
  static get titleLargeGray50 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray50,
      );
  static get titleLargeGray50SemiBold => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeMontserratPrimary =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w300,
      );
  static get titleLargePrimaryRegular => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get titleLargePrimarySemiBold => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleLargePrimary_1 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargeff027fff => theme.textTheme.titleLarge!.copyWith(
        color: Color(0XFF027FFF),
      );
  static get titleMediumGray50 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50,
        fontSize: 18.fSize,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontSize: 14.fSize,
      );
  static get titleSmallBlack900Medium => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray50 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50.withOpacity(0.75),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }
}
