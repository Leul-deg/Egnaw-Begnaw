import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:frontend/presentation/screens/welcome/components/body.dart';
import 'package:frontend/presentation/screens/welcome/welcomeScreen.dart';

void main() {
  group('Welcome widget', () {
    testWidgets('renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: Welcome(),
      ));

      expect(find.text('Event Ticketing App'), findsOneWidget);
      expect(find.text('Login'), findsOneWidget);
      expect(find.text('Sign Up'), findsOneWidget);
    });

    testWidgets('navigates to login screen when Login button is pressed', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: Welcome(),
      ));

      await tester.tap(find.text('Login'));
      await tester.pumpAndSettle();

      expect(find.text('Login Screen'), findsOneWidget);
    });

    testWidgets('navigates to signup screen when Sign Up button is pressed', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: Welcome(),
      ));

      await tester.tap(find.text('Sign Up'));
      await tester.pumpAndSettle();

      expect(find.text('Sign Up Screen'), findsOneWidget);
    });
  });
}