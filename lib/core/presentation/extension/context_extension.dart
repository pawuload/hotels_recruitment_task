import 'package:flutter/material.dart';
import 'package:hotels/core/presentation/theme/app_colors_theme.dart';
import 'package:hotels/core/presentation/theme/app_text_theme.dart';

extension ContextExtension on BuildContext {
  AppColorsTheme get appColors {
    final colorsTheme = Theme.of(this).extension<AppColorsTheme>();
    if (colorsTheme == null) {
      return AppColorsTheme.light();
    }
    return colorsTheme;
  }

  AppTextTheme get appTextTheme {
    final textTheme = Theme.of(this).extension<AppTextTheme>();
    if (textTheme == null) {
      return AppTextTheme.create(
        textDark: appColors.textDark,
        textGray: appColors.textGray,
      );
    }
    return textTheme;
  }

  bool get isTablet => MediaQuery.sizeOf(this).width > 600;
}
