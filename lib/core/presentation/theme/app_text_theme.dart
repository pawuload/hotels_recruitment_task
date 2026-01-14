import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme extends TextTheme implements ThemeExtension<AppTextTheme> {
  const AppTextTheme({
    super.displayLarge,
    super.displayMedium,
    super.displaySmall,
    super.headlineLarge,
    super.headlineMedium,
    super.headlineSmall,
    super.titleLarge,
    super.titleMedium,
    super.titleSmall,
    super.bodyLarge,
    super.bodyMedium,
    super.bodySmall,
    super.labelLarge,
    super.labelMedium,
    super.labelSmall,
    this.labelXSmall,
    this.labelSmallBold,
    this.labelXLarge,
    this.labelXSmallBold,
  });

  factory AppTextTheme.create({
    required Color textDark,
    required Color textGray,
  }) {
    return AppTextTheme(
      displayLarge: GoogleFonts.openSans(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: textDark,
        height: 1.2,
      ),
      displayMedium: GoogleFonts.openSans(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: textDark,
        height: 1.2,
      ),
      displaySmall: GoogleFonts.openSans(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: textDark,
        height: 1.2,
      ),
      headlineLarge: GoogleFonts.openSans(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: textDark,
        height: 1.3,
      ),
      headlineMedium: GoogleFonts.openSans(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: textDark,
        height: 22 / 18,
        // line-height: 22px / font-size: 18px
        letterSpacing: 0,
      ),
      headlineSmall: GoogleFonts.openSans(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: textDark,
        height: 22 / 16,
        // line-height: 22px / font-size: 16px
        letterSpacing: 0,
      ),
      titleLarge: GoogleFonts.openSans(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: textDark,
        height: 1.4,
      ),
      titleMedium: GoogleFonts.openSans(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: textDark,
        height: 1.4,
      ),
      titleSmall: GoogleFonts.openSans(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: textDark,
        height: 1.4,
      ),
      bodyLarge: GoogleFonts.openSans(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: textDark,
        height: 1.5,
      ),
      bodyMedium: GoogleFonts.openSans(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: textDark,
        height: 1.5,
      ),
      bodySmall: GoogleFonts.openSans(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: textGray,
        height: 1.5,
      ),
      labelLarge: GoogleFonts.openSans(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: textDark,
        height: 1.4,
      ),
      labelMedium: GoogleFonts.openSans(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: textDark,
        height: 22 / 16,
        // line-height: 22px / font-size: 16px
        letterSpacing: 0,
      ),
      labelSmall: GoogleFonts.openSans(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: textGray,
        height: 20 / 14,
        // line-height: 20px / font-size: 14px
        letterSpacing: 0,
      ),
      labelXSmall: GoogleFonts.openSans(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: textGray,
        height: 16 / 12,
        // line-height: 16px / font-size: 12px
        letterSpacing: 0,
      ),
      labelSmallBold: GoogleFonts.openSans(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: textDark,
        height: 20 / 14,
        // line-height: 20px / font-size: 14px
        letterSpacing: 0,
      ),
      labelXLarge: GoogleFonts.openSans(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: textDark,
        height: 24 / 20,
        // line-height: 24px / font-size: 20px
        letterSpacing: 0,
      ),
      labelXSmallBold: GoogleFonts.openSans(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: textGray,
        height: 16 / 12,
        // line-height: 16px / font-size: 12px
        letterSpacing: 0,
      ),
    );
  }

  final TextStyle? labelXSmall;
  final TextStyle? labelSmallBold;
  final TextStyle? labelXLarge;
  final TextStyle? labelXSmallBold;

  @override
  AppTextTheme lerp(AppTextTheme? other, double t) {
    if (other is! AppTextTheme) {
      return this;
    }
    return AppTextTheme(
      displayLarge:
          TextStyle.lerp(displayLarge, other.displayLarge, t) ?? displayLarge,
      displayMedium:
          TextStyle.lerp(displayMedium, other.displayMedium, t) ??
          displayMedium,
      displaySmall:
          TextStyle.lerp(displaySmall, other.displaySmall, t) ?? displaySmall,
      headlineLarge:
          TextStyle.lerp(headlineLarge, other.headlineLarge, t) ??
          headlineLarge,
      headlineMedium:
          TextStyle.lerp(headlineMedium, other.headlineMedium, t) ??
          headlineMedium,
      headlineSmall:
          TextStyle.lerp(headlineSmall, other.headlineSmall, t) ??
          headlineSmall,
      titleLarge: TextStyle.lerp(titleLarge, other.titleLarge, t) ?? titleLarge,
      titleMedium:
          TextStyle.lerp(titleMedium, other.titleMedium, t) ?? titleMedium,
      titleSmall: TextStyle.lerp(titleSmall, other.titleSmall, t) ?? titleSmall,
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t) ?? bodyLarge,
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t) ?? bodyMedium,
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t) ?? bodySmall,
      labelLarge: TextStyle.lerp(labelLarge, other.labelLarge, t) ?? labelLarge,
      labelMedium:
          TextStyle.lerp(labelMedium, other.labelMedium, t) ?? labelMedium,
      labelSmall: TextStyle.lerp(labelSmall, other.labelSmall, t) ?? labelSmall,
      labelXSmall:
          TextStyle.lerp(labelXSmall, other.labelXSmall, t) ?? labelXSmall,
      labelSmallBold:
          TextStyle.lerp(labelSmallBold, other.labelSmallBold, t) ??
          labelSmallBold,
      labelXLarge:
          TextStyle.lerp(labelXLarge, other.labelXLarge, t) ?? labelXLarge,
      labelXSmallBold:
          TextStyle.lerp(labelXSmallBold, other.labelXSmallBold, t) ??
          labelXSmallBold,
    );
  }

  @override
  Object get type => AppTextTheme;

  @override
  AppTextTheme copyWith({
    TextStyle? displayLarge,
    TextStyle? displayMedium,
    TextStyle? displaySmall,
    TextStyle? headlineLarge,
    TextStyle? headlineMedium,
    TextStyle? headlineSmall,
    TextStyle? titleLarge,
    TextStyle? titleMedium,
    TextStyle? titleSmall,
    TextStyle? bodyLarge,
    TextStyle? bodyMedium,
    TextStyle? bodySmall,
    TextStyle? labelLarge,
    TextStyle? labelMedium,
    TextStyle? labelSmall,
    TextStyle? labelXSmall,
    TextStyle? labelSmallBold,
    TextStyle? labelXLarge,
    TextStyle? labelXSmallBold,
  }) {
    return AppTextTheme(
      displayLarge: displayLarge ?? this.displayLarge,
      displayMedium: displayMedium ?? this.displayMedium,
      displaySmall: displaySmall ?? this.displaySmall,
      headlineLarge: headlineLarge ?? this.headlineLarge,
      headlineMedium: headlineMedium ?? this.headlineMedium,
      headlineSmall: headlineSmall ?? this.headlineSmall,
      titleLarge: titleLarge ?? this.titleLarge,
      titleMedium: titleMedium ?? this.titleMedium,
      titleSmall: titleSmall ?? this.titleSmall,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodySmall: bodySmall ?? this.bodySmall,
      labelLarge: labelLarge ?? this.labelLarge,
      labelMedium: labelMedium ?? this.labelMedium,
      labelSmall: labelSmall ?? this.labelSmall,
      labelXSmall: labelXSmall ?? this.labelXSmall,
      labelSmallBold: labelSmallBold ?? this.labelSmallBold,
      labelXLarge: labelXLarge ?? this.labelXLarge,
      labelXSmallBold: labelXSmallBold ?? this.labelXSmallBold,
    );
  }
}
