import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:hotels/core/data/local/app_preferences.dart';
import 'package:hotels/core/presentation/images/app_icons.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();

  // Initialize AppPreferences
  await AppPreferences().initialize();

  // Precache navbar svg icons
  for (final icon in AppIcons.precachedOnInit) {
    await icon.precacheSvg();
  }

  // TODO: Add cross-flavor configuration here

  runApp(await builder());
}
