import 'package:flutter/material.dart';
import 'package:hotels/core/data/local/app_preferences.dart';
import 'package:hotels/core/presentation/extension/context_extension.dart';
import 'package:hotels/core/presentation/theme/app_colors_theme.dart';
import 'package:hotels/core/presentation/theme/app_text_theme.dart';
import 'package:hotels/core/presentation/theme/spacing.dart';
import 'package:hotels/core/presentation/widgets/custom_app_bar.dart';
import 'package:hotels/l10n/l10n.dart';

class AccountPageView extends StatelessWidget {
  const AccountPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final textTheme = context.appTextTheme;
    final colors = context.appColors;

    return Scaffold(
      appBar: CustomAppBar(
        title: l10n.account,
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                l10n.account,
                style: textTheme.bodyLarge,
              ),
            ),
          ),
          _LanguageSelector(
            textTheme: textTheme,
            colors: colors,
          ),
        ],
      ),
    );
  }
}

class _LanguageSelector extends StatelessWidget {
  const _LanguageSelector({
    required this.textTheme,
    required this.colors,
  });

  final AppTextTheme textTheme;
  final AppColorsTheme colors;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final appPreferences = AppPreferences();

    return ValueListenableBuilder<Locale?>(
      valueListenable: appPreferences.localeValueNotifier,
      builder: (context, currentLocale, _) {
        final currentLanguageCode = currentLocale?.languageCode ?? 'en';

        return Container(
          decoration: BoxDecoration(
            color: colors.backgroundPrimary,
            border: Border(
              top: BorderSide(
                color: colors.textGray.withAlpha(20),
              ),
            ),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: Spacing.double,
            vertical: Spacing.single,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.language,
                style: textTheme.labelMedium,
              ),
              const SizedBox(height: Spacing.single),
              Row(
                children: [
                  _LanguageButton(
                    label: l10n.english,
                    languageCode: 'en',
                    isSelected: currentLanguageCode == 'en',
                    onTap: () async {
                      await appPreferences.setLocale(const Locale('en'));
                    },
                    textTheme: textTheme,
                    colors: colors,
                  ),
                  const SizedBox(width: Spacing.single),
                  _LanguageButton(
                    label: l10n.polish,
                    languageCode: 'pl',
                    isSelected: currentLanguageCode == 'pl',
                    onTap: () async {
                      await appPreferences.setLocale(const Locale('pl'));
                    },
                    textTheme: textTheme,
                    colors: colors,
                  ),
                  const SizedBox(width: Spacing.single),
                  _LanguageButton(
                    label: l10n.german,
                    languageCode: 'de',
                    isSelected: currentLanguageCode == 'de',
                    onTap: () async {
                      await appPreferences.setLocale(const Locale('de'));
                    },
                    textTheme: textTheme,
                    colors: colors,
                  ),
                ],
              ),
              const SizedBox(height: Spacing.single),
            ],
          ),
        );
      },
    );
  }
}

class _LanguageButton extends StatelessWidget {
  const _LanguageButton({
    required this.label,
    required this.languageCode,
    required this.isSelected,
    required this.onTap,
    required this.textTheme,
    required this.colors,
  });

  final String label;
  final String languageCode;
  final bool isSelected;
  final VoidCallback onTap;
  final AppTextTheme textTheme;
  final AppColorsTheme colors;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: Spacing.single,
            vertical: Spacing.singleHalf,
          ),
          decoration: BoxDecoration(
            color: isSelected
                ? colors.primary.withAlpha(10)
                : colors.backgroundPrimary,
            border: Border.all(
              color: isSelected
                  ? colors.primary
                  : colors.textGray.withAlpha(30),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              label,
              style: textTheme.labelMedium?.copyWith(
                color: isSelected ? colors.primary : colors.textDark,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
