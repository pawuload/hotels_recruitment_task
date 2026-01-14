import 'package:flutter/material.dart';
import 'package:hotels/core/data/local/app_preferences.dart';
import 'package:hotels/core/presentation/router/app_router.dart';
import 'package:hotels/core/presentation/theme/app_theme.dart';
import 'package:hotels/l10n/l10n.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Locale?>(
      valueListenable: AppPreferences().localeValueNotifier,
      builder: (context, locale, _) {
        return MaterialApp.router(
          theme: AppTheme.lightTheme,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: locale,
          routerConfig: appRouter.config(),
        );
      },
    );
  }
}
