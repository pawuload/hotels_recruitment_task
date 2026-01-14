import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotels/core/presentation/widgets/error_state_widget.dart';
import '../../../helpers/helpers.dart';

void main() {
  group('ErrorStateWidget', () {
    testWidgets('displays error icon and message', (tester) async {
      const message = 'Failed to load hotels';

      await tester.pumpApp(const ErrorStateWidget(message: message));

      expect(find.byIcon(Icons.error_outline), findsOneWidget);
      expect(find.textContaining(message), findsOneWidget);
    });

    testWidgets('displays retry button when onRetry is provided', (
      tester,
    ) async {
      const message = 'Network error';
      var retryCalled = false;

      await tester.pumpApp(
        ErrorStateWidget(
          message: message,
          onRetry: () {
            retryCalled = true;
          },
        ),
      );

      expect(find.byType(ElevatedButton), findsOneWidget);
      expect(retryCalled, false);

      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();
      expect(retryCalled, true);
    });

    testWidgets('does not display retry button when onRetry is null', (
      tester,
    ) async {
      const message = 'Error occurred';

      await tester.pumpApp(const ErrorStateWidget(message: message));

      expect(find.byType(ElevatedButton), findsNothing);
      expect(find.byIcon(Icons.error_outline), findsOneWidget);
      expect(find.textContaining(message), findsOneWidget);
    });

    testWidgets('centers content vertically and horizontally', (tester) async {
      const message = 'Error';

      await tester.pumpApp(const ErrorStateWidget(message: message));

      final errorWidget = find.byType(ErrorStateWidget);
      expect(errorWidget, findsOneWidget);

      final column = find.descendant(
        of: errorWidget,
        matching: find.byType(Column),
      );
      expect(column, findsWidgets);

      final columnWidget = tester.widget<Column>(column.first);
      expect(columnWidget.mainAxisAlignment, MainAxisAlignment.center);
    });

    testWidgets('displays error message with proper styling', (tester) async {
      const message = 'Connection failed';

      await tester.pumpApp(const ErrorStateWidget(message: message));

      final textWidget = tester.widget<Text>(find.textContaining(message));
      expect(textWidget.style?.color, Colors.red);
      expect(textWidget.textAlign, TextAlign.center);
    });
  });
}
