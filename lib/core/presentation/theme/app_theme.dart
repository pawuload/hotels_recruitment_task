import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotels/core/presentation/theme/app_button_theme.dart';
import 'package:hotels/core/presentation/theme/app_colors_theme.dart';
import 'package:hotels/core/presentation/theme/app_text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme {
    final appColors = AppColorsTheme.light();

    final appTextTheme = AppTextTheme.create(
      textDark: appColors.textDark,
      textGray: appColors.textGray,
    );

    final appButtonTheme = AppButtonTheme(
      appColors: appColors,
      appTextTheme: appTextTheme,
    );

    return ThemeData(
      useMaterial3: true,
      fontFamily: GoogleFonts.openSans().fontFamily,
      colorScheme: ColorScheme.fromSeed(
        seedColor: appColors.primary,
        primary: appColors.primary,
        onPrimary: appColors.contentInversePrimary,
        surface: appColors.contentInversePrimary,
        onSurface: appColors.textDark,
      ),
      scaffoldBackgroundColor: appColors.contentInversePrimary,
      textTheme: appTextTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: appColors.primary,
        foregroundColor: appColors.contentInversePrimary,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 56,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: appButtonTheme.primary,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: appColors.contentInversePrimary,
        selectedItemColor: appColors.primary,
        unselectedItemColor: appColors.textGray,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: appTextTheme.labelXSmall?.copyWith(
          color: appColors.primary,
          height: 1,
        ),
        unselectedLabelStyle: appTextTheme.labelXSmall?.copyWith(
          height: 1,
        ),
        selectedIconTheme: IconThemeData(
          size: 24,
          color: appColors.primary,
        ),
        unselectedIconTheme: IconThemeData(
          size: 24,
          color: appColors.textGray,
        ),
      ),
      iconTheme: IconThemeData(
        color: appColors.textDark,
      ),
      cardTheme: CardThemeData(
        elevation: 0,
        color: appColors.contentInversePrimary,
        shadowColor: Colors.black.withAlpha(1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
      ),
      extensions: [
        appColors,
        appTextTheme,
        appButtonTheme,
      ],
    );
  }
}
