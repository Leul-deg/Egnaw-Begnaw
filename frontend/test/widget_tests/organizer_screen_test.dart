import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/presentation/screens/organizer/organizerScreen.dart';

void main() {
  group('OrganizerScreen widget', () {
    testWidgets('renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget( MaterialApp(
        home: OrganizerScreen(),
      ));

      expect(find.text('Your Events'), findsOneWidget);
      expect(find.text('Add Event'), findsOneWidget);
      expect(find.text('Profile'), findsOneWidget);
    });

    testWidgets('navigates to UpcomingEvents screen when Your Events button is pressed', (WidgetTester tester) async {
      await tester.pumpWidget( MaterialApp(
        home: OrganizerScreen(),
      ));

      await tester.tap(find.text('Your Events'));
      await tester.pumpAndSettle();

      expect(find.text('Upcoming Events'), findsOneWidget);
    });

    testWidgets('navigates to EventCreate screen when Add Event button is pressed', (WidgetTester tester) async {
      await tester.pumpWidget( MaterialApp(
        home: OrganizerScreen(),
      ));

      await tester.tap(find.text('Add Event'));
      await tester.pumpAndSettle();

      expect(find.text('Create Event'), findsOneWidget);
    });

    testWidgets('navigates to ProfilePage screen when Profile button is pressed', (WidgetTester tester) async {
      await tester.pumpWidget( MaterialApp(
        home: OrganizerScreen(),
      ));

      await tester.tap(find.text('Profile'));
      await tester.pumpAndSettle();

      expect(find.text('Profile Page'), findsOneWidget);
    });
  });
}