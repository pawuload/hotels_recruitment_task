import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotels/core/data/local/app_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  SharedPreferences.setMockInitialValues({});
  TestWidgetsFlutterBinding.ensureInitialized();

  group('AppPreferences', () {
    late AppPreferences appPreferences;

    setUp(() async {
      final prefs = await SharedPreferences.getInstance();
      await prefs.clear();
      SharedPreferences.setMockInitialValues({});
      appPreferences = AppPreferences()..resetForTesting();
    });

    tearDown(() async {
      final prefs = await SharedPreferences.getInstance();
      await prefs.clear();
      appPreferences.resetForTesting();
    });

    group('Initialization', () {
      test('initialize loads favorite hotels and locale', () async {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setStringList('favoriteHotels', ['hotel-1', 'hotel-2']);
        await prefs.setString('locale', 'en');

        await appPreferences.initialize();

        expect(appPreferences.favoriteHotels, {'hotel-1', 'hotel-2'});
        expect(appPreferences.locale?.languageCode, 'en');
      });

      test('initialize handles empty SharedPreferences', () async {
        await appPreferences.initialize();

        expect(appPreferences.favoriteHotels, isEmpty);
        expect(appPreferences.locale, isNull);
      });

      test('initialize is idempotent', () async {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setStringList('favoriteHotels', ['hotel-1']);

        await appPreferences.initialize();
        await appPreferences.initialize();

        expect(appPreferences.favoriteHotels, {'hotel-1'});
      });
    });

    group('Favorite Hotels', () {
      setUp(() async {
        await appPreferences.initialize();
      });

      test('isFavorite returns false for non-favorite hotel', () {
        expect(appPreferences.isFavorite('hotel-1'), false);
      });

      test('toggleFavorite adds hotel to favorites', () async {
        await appPreferences.toggleFavorite('hotel-1');

        expect(appPreferences.isFavorite('hotel-1'), true);
        expect(appPreferences.favoriteHotels, {'hotel-1'});
      });

      test('toggleFavorite removes hotel from favorites', () async {
        await appPreferences.toggleFavorite('hotel-1');
        expect(appPreferences.isFavorite('hotel-1'), true);

        await appPreferences.toggleFavorite('hotel-1');

        expect(appPreferences.isFavorite('hotel-1'), false);
        expect(appPreferences.favoriteHotels, isEmpty);
      });

      test('toggleFavorite handles multiple hotels', () async {
        await appPreferences.toggleFavorite('hotel-1');
        await appPreferences.toggleFavorite('hotel-2');
        await appPreferences.toggleFavorite('hotel-3');

        expect(appPreferences.favoriteHotels, {
          'hotel-1',
          'hotel-2',
          'hotel-3',
        });
        expect(appPreferences.isFavorite('hotel-1'), true);
        expect(appPreferences.isFavorite('hotel-2'), true);
        expect(appPreferences.isFavorite('hotel-3'), true);
      });

      test('toggleFavorite persists favorites to SharedPreferences', () async {
        await appPreferences.toggleFavorite('hotel-1');
        await appPreferences.toggleFavorite('hotel-2');

        final prefs = await SharedPreferences.getInstance();
        final savedFavorites = prefs.getStringList('favoriteHotels');

        expect(savedFavorites, contains('hotel-1'));
        expect(savedFavorites, contains('hotel-2'));
        expect(savedFavorites?.length, 2);
      });

      test(
        'favoriteHotelsValueNotifier notifies listeners on change',
        () async {
          var notifiedValue = <String>{};
          appPreferences.favoriteHotelsValueNotifier.addListener(() {
            notifiedValue = appPreferences.favoriteHotelsValueNotifier.value;
          });

          await appPreferences.toggleFavorite('hotel-1');

          expect(notifiedValue, {'hotel-1'});
        },
      );

      test('adding same favorite twice does not duplicate', () async {
        await appPreferences.toggleFavorite('hotel-1');
        await appPreferences.toggleFavorite('hotel-1');
        await appPreferences.toggleFavorite('hotel-1');

        expect(appPreferences.favoriteHotels.length, 1);
        expect(appPreferences.favoriteHotels, {'hotel-1'});
      });
    });

    group('Locale Management', () {
      setUp(() async {
        await appPreferences.initialize();
      });

      test('setLocale saves and updates locale', () async {
        await appPreferences.setLocale(const Locale('en'));

        expect(appPreferences.locale?.languageCode, 'en');
      });

      test('setLocale persists locale to SharedPreferences', () async {
        await appPreferences.setLocale(const Locale('pl'));

        final prefs = await SharedPreferences.getInstance();
        final savedLocale = prefs.getString('locale');

        expect(savedLocale, 'pl');
      });

      test('setLocale updates localeValueNotifier', () async {
        Locale? notifiedLocale;
        appPreferences.localeValueNotifier.addListener(() {
          notifiedLocale = appPreferences.localeValueNotifier.value;
        });

        await appPreferences.setLocale(const Locale('de'));

        expect(notifiedLocale?.languageCode, 'de');
      });

      test('setLocale can change locale multiple times', () async {
        await appPreferences.setLocale(const Locale('en'));
        expect(appPreferences.locale?.languageCode, 'en');

        await appPreferences.setLocale(const Locale('pl'));
        expect(appPreferences.locale?.languageCode, 'pl');

        await appPreferences.setLocale(const Locale('de'));
        expect(appPreferences.locale?.languageCode, 'de');
      });

      test('_loadLocale loads saved locale on initialization', () async {
        appPreferences.resetForTesting();
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('locale', 'fr');
        SharedPreferences.setMockInitialValues({'locale': 'fr'});

        final testAppPreferences = AppPreferences();
        await testAppPreferences.initialize();

        expect(testAppPreferences.locale?.languageCode, 'fr');
      });
    });

    group('Concurrent Operations', () {
      setUp(() async {
        await appPreferences.initialize();
      });

      test('handles multiple toggleFavorite calls', () async {
        await appPreferences.toggleFavorite('hotel-1');
        await appPreferences.toggleFavorite('hotel-2');
        await appPreferences.toggleFavorite('hotel-3');

        expect(appPreferences.favoriteHotels.length, 3);
        expect(appPreferences.favoriteHotels, {
          'hotel-1',
          'hotel-2',
          'hotel-3',
        });
      });
    });
  });
}
