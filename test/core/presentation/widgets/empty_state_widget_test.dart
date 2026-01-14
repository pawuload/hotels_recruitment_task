import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotels/core/presentation/widgets/empty_state_widget.dart';
import '../../../helpers/helpers.dart';

void main() {
  group('EmptyStateWidget', () {
    testWidgets('displays message', (tester) async {
      const message = 'No hotels found';

      await tester.pumpApp(const EmptyStateWidget(message: message));

      expect(find.text(message), findsOneWidget);
    });

    testWidgets('centers content', (tester) async {
      const message = 'Empty state';

      await tester.pumpApp(const EmptyStateWidget(message: message));

      final center = find.byType(Center);
      expect(center, findsOneWidget);
    });

    testWidgets('displays different messages correctly', (tester) async {
      const message1 = 'No favorites yet';
      const message2 = 'No results available';

      await tester.pumpApp(const EmptyStateWidget(message: message1));
      expect(find.text(message1), findsOneWidget);

      await tester.pumpApp(const EmptyStateWidget(message: message2));
      expect(find.text(message2), findsOneWidget);
    });
  });
}
