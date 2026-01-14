import 'package:flutter/material.dart';
import 'package:hotels/core/presentation/theme/app_colors_theme.dart';
import 'package:hotels/core/presentation/theme/app_text_theme.dart';

class AppButtonTheme extends ThemeExtension<AppButtonTheme> {
  const AppButtonTheme({
    required this.appColors,
    required this.appTextTheme,
  });

  final AppColorsTheme appColors;
  final AppTextTheme appTextTheme;

  ButtonStyle get primary => ElevatedButton.styleFrom(
    backgroundColor: appColors.buttonOrange,
    foregroundColor: appColors.contentInversePrimary,
    elevation: 0,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    textStyle: appTextTheme.labelLarge?.copyWith(
      color: appColors.contentInversePrimary,
      fontWeight: FontWeight.w600,
    ),
  );

  @override
  AppButtonTheme copyWith({
    AppColorsTheme? appColors,
    AppTextTheme? appTextTheme,
  }) {
    return AppButtonTheme(
      appColors: appColors ?? this.appColors,
      appTextTheme: appTextTheme ?? this.appTextTheme,
    );
  }

  @override
  AppButtonTheme lerp(ThemeExtension<AppButtonTheme>? other, double t) {
    if (other is! AppButtonTheme) {
      return this;
    }
    return AppButtonTheme(
      appColors: appColors.lerp(other.appColors, t),
      appTextTheme: other.appTextTheme,
    );
  }
}
