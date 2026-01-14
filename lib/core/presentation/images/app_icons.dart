import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Icons for the app
// ignore_for_file: constant_identifier_names

enum AppIcons {
  favorite_button,
  help_button,
  hotel_star,
  nav_account,
  nav_favourites,
  nav_hotels,
  nav_home,
  smile;

  Widget getSvg({
    Key? key,
    BoxFit? fit,
    Color? color,
    BlendMode? blendMode,
    double? height,
    double? width,
  }) {
    return SvgPicture.asset(
      'assets/icons/$name.svg',
      key: key,
      fit: fit ?? BoxFit.none,
      colorFilter: color != null
          ? ColorFilter.mode(
              color,
              blendMode ?? BlendMode.srcIn,
            )
          : null,
      height: height,
      width: width,
    );
  }

  static List<AppIcons> get navbarIcons => [
    nav_home,
    nav_hotels,
    nav_favourites,
    nav_account,
  ];

  static List<AppIcons> get precachedOnInit => [
    ...navbarIcons,
  ];

  Future<void> precacheSvg() async {
    final loader = SvgAssetLoader('assets/icons/$name.svg');
    await svg.cache.putIfAbsent(
      loader.cacheKey(null),
      () => loader.loadBytes(null),
    );
  }
}
