import 'package:flutter/material.dart';

class AppColorsTheme extends ThemeExtension<AppColorsTheme> {
  const AppColorsTheme({
    required this.badgeGreen,
    required this.buttonOrange,
    required this.textDark,
    required this.textGray,
    required this.primary,
    required this.backgroundPrimary,
    required this.contentInversePrimary,
    required this.favoriteRed,
    required this.borderSecondary,
  });

  factory AppColorsTheme.light() => const AppColorsTheme(
    badgeGreen: Color(0xFF85BC39),
    buttonOrange: Color(0xFFFF8F16),
    textDark: Color(0xFF222222),
    textGray: Color(0xFF595959),
    primary: Color(0xFF002873),
    backgroundPrimary: Color(0xFFFFFFFF),
    contentInversePrimary: Color(0xFFFFFFFF),
    favoriteRed: Color(0xFFFF0000),
    borderSecondary: Color(0xFFE9E9E9),
  );

  final Color badgeGreen;
  final Color buttonOrange;
  final Color textDark;
  final Color textGray;
  final Color primary;
  final Color backgroundPrimary;
  final Color contentInversePrimary;
  final Color favoriteRed;
  final Color borderSecondary;

  @override
  AppColorsTheme copyWith({
    Color? badgeGreen,
    Color? buttonOrange,
    Color? textDark,
    Color? textGray,
    Color? primary,
    Color? backgroundPrimary,
    Color? contentInversePrimary,
    Color? favoriteRed,
    Color? borderSecondary,
  }) {
    return AppColorsTheme(
      badgeGreen: badgeGreen ?? this.badgeGreen,
      buttonOrange: buttonOrange ?? this.buttonOrange,
      textDark: textDark ?? this.textDark,
      textGray: textGray ?? this.textGray,
      primary: primary ?? this.primary,
      backgroundPrimary: backgroundPrimary ?? this.backgroundPrimary,
      contentInversePrimary:
          contentInversePrimary ?? this.contentInversePrimary,
      favoriteRed: favoriteRed ?? this.favoriteRed,
      borderSecondary: borderSecondary ?? this.borderSecondary,
    );
  }

  @override
  AppColorsTheme lerp(ThemeExtension<AppColorsTheme>? other, double t) {
    if (other is! AppColorsTheme) {
      return this;
    }
    return AppColorsTheme(
      badgeGreen: Color.lerp(badgeGreen, other.badgeGreen, t) ?? badgeGreen,
      buttonOrange:
          Color.lerp(buttonOrange, other.buttonOrange, t) ?? buttonOrange,
      textDark: Color.lerp(textDark, other.textDark, t) ?? textDark,
      textGray: Color.lerp(textGray, other.textGray, t) ?? textGray,
      primary: Color.lerp(primary, other.primary, t) ?? primary,
      backgroundPrimary:
          Color.lerp(backgroundPrimary, other.backgroundPrimary, t) ??
          backgroundPrimary,
      contentInversePrimary:
          Color.lerp(contentInversePrimary, other.contentInversePrimary, t) ??
          contentInversePrimary,
      favoriteRed: Color.lerp(favoriteRed, other.favoriteRed, t) ?? favoriteRed,
      borderSecondary:
          Color.lerp(borderSecondary, other.borderSecondary, t) ??
          borderSecondary,
    );
  }
}
