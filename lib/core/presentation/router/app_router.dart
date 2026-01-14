import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hotels/core/presentation/extension/context_extension.dart';
import 'package:hotels/core/presentation/images/app_icons.dart';
import 'package:hotels/core/presentation/theme/app_colors_theme.dart';
import 'package:hotels/core/presentation/theme/spacing.dart';
import 'package:hotels/features/account/presentation/account_page.dart';
import 'package:hotels/features/favorites/presentation/favorites_page.dart';
import 'package:hotels/features/hotels/presentation/hotels_page.dart';
import 'package:hotels/features/overview/presentation/overview_page.dart';
import 'package:hotels/l10n/l10n.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: MainWrapperRoute.page,
      initial: true,
      children: [
        AutoRoute(page: OverviewRoute.page),
        AutoRoute(page: HotelsRoute.page, initial: true),
        AutoRoute(page: FavoritesRoute.page),
        AutoRoute(page: AccountRoute.page),
      ],
    ),
  ];
}

extension AppRouterExtension on AppRouter {
  RouterConfig<Object> config() {
    return RouterConfig<Object>(
      routerDelegate: delegate(),
      routeInformationParser: defaultRouteParser(),
    );
  }
}

@RoutePage(name: 'MainWrapperRoute')
class MainWrapperPage extends StatelessWidget {
  const MainWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        OverviewRoute(),
        HotelsRoute(),
        FavoritesRoute(),
        AccountRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        final colors = context.appColors;
        final currentIndex = tabsRouter.activeIndex;

        return _BottomNavigation(
          currentIndex: currentIndex,
          colors: colors,
          tabsRouter: tabsRouter,
        );
      },
    );
  }
}

class _BottomNavigation extends StatelessWidget {
  const _BottomNavigation({
    required this.currentIndex,
    required this.colors,
    required this.tabsRouter,
  });

  final int currentIndex;
  final AppColorsTheme colors;
  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    const padding = EdgeInsets.only(bottom: Spacing.half + Spacing.mini);

    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 4,
            color: Color(0x40000000),
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: tabsRouter.setActiveIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: padding,
              child: AppIcons.nav_home.getSvg(
                color: currentIndex == 0 ? colors.primary : colors.textGray,
                width: 24,
                height: 24,
              ),
            ),
            label: l10n.overview,
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: padding,
              child: AppIcons.nav_hotels.getSvg(
                color: currentIndex == 1 ? colors.primary : colors.textGray,
                width: 24,
                height: 24,
              ),
            ),
            label: l10n.search,
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: padding,
              child: AppIcons.nav_favourites.getSvg(
                color: currentIndex == 2 ? colors.primary : colors.textGray,
                width: 24,
                height: 24,
              ),
            ),
            label: l10n.favorites,
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: padding,
              child: AppIcons.nav_account.getSvg(
                color: currentIndex == 3 ? colors.primary : colors.textGray,
                width: 24,
                height: 24,
              ),
            ),
            label: l10n.account,
          ),
        ],
      ),
    );
  }
}
