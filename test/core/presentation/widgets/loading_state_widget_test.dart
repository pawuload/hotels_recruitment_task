import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotels/core/presentation/widgets/loading_state_widget.dart';
import '../../../helpers/helpers.dart';

void main() {
  group('LoadingStateWidget', () {
    testWidgets('displays CircularProgressIndicator', (tester) async {
      await tester.pumpApp(const LoadingStateWidget());

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('displays message when provided', (tester) async {
      const message = 'Loading hotels...';

      await tester.pumpApp(const LoadingStateWidget(message: message));

      expect(find.text(message), findsOneWidget);
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('does not display message when null', (tester) async {
      await tester.pumpApp(const LoadingStateWidget());

      expect(find.byType(Text), findsNothing);
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('centers content vertically and horizontally', (tester) async {
      await tester.pumpApp(const LoadingStateWidget());

      final center = find.byType(Center);
      expect(center, findsOneWidget);

      final column = find.byType(Column);
      expect(column, findsOneWidget);

      final columnWidget = tester.widget<Column>(column);
      expect(columnWidget.mainAxisAlignment, MainAxisAlignment.center);
    });
  });
}
