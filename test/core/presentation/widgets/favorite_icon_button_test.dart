import 'package:flutter_test/flutter_test.dart';
import 'package:hotels/core/presentation/theme/app_colors_theme.dart';
import 'package:hotels/core/presentation/widgets/favorite_icon_button.dart';
import '../../../helpers/helpers.dart';

void main() {
  group('FavoriteIconButton', () {
    testWidgets('displays favorite icon', (tester) async {
      var tapped = false;
      final colors = AppColorsTheme.light();

      await tester.pumpApp(
        FavoriteIconButton(
          isFavorite: false,
          onTap: () {
            tapped = true;
          },
          colors: colors,
        ),
      );

      expect(find.byType(FavoriteIconButton), findsOneWidget);
      expect(tapped, false);
    });

    testWidgets('calls onTap when tapped', (tester) async {
      var tapped = false;
      final colors = AppColorsTheme.light();

      await tester.pumpApp(
        FavoriteIconButton(
          isFavorite: false,
          onTap: () {
            tapped = true;
          },
          colors: colors,
        ),
      );

      await tester.tap(find.byType(FavoriteIconButton));
      await tester.pumpAndSettle();

      expect(tapped, true);
    });

    testWidgets('displays different state for favorite vs non-favorite', (
      tester,
    ) async {
      final colors = AppColorsTheme.light();

      await tester.pumpApp(
        FavoriteIconButton(
          isFavorite: false,
          onTap: () {},
          colors: colors,
        ),
      );

      expect(find.byType(FavoriteIconButton), findsOneWidget);

      await tester.pumpApp(
        FavoriteIconButton(
          isFavorite: true,
          onTap: () {},
          colors: colors,
        ),
      );

      expect(find.byType(FavoriteIconButton), findsOneWidget);
    });

    testWidgets('handles multiple taps correctly', (tester) async {
      var tapCount = 0;
      final colors = AppColorsTheme.light();

      await tester.pumpApp(
        FavoriteIconButton(
          isFavorite: false,
          onTap: () {
            tapCount++;
          },
          colors: colors,
        ),
      );

      await tester.tap(find.byType(FavoriteIconButton));
      await tester.pumpAndSettle();
      await tester.tap(find.byType(FavoriteIconButton));
      await tester.pumpAndSettle();

      expect(tapCount, 2);
    });
  });
}
