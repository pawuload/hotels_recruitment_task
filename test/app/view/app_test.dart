import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotels/core/presentation/app.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  group('App', () {
    setUp(() {
      SharedPreferences.setMockInitialValues({});
    });

    testWidgets('renders MaterialApp.router', (tester) async {
      await tester.pumpWidget(const App());
      await tester.pumpAndSettle();

      expect(find.byType(MaterialApp), findsWidgets);
    });

    testWidgets('app builds without errors', (tester) async {
      await tester.pumpWidget(const App());
      await tester.pumpAndSettle();

      expect(tester.takeException(), isNull);
    });
  });
}
