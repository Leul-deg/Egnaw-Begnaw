import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/application/auth/login/login_bloc.dart';
import 'package:frontend/infrastructure/auth/data_sources/auth_data_sources.dart';
import 'package:frontend/infrastructure/auth/repositories/auth_repository_imp.dart';
import 'package:frontend/presentation/screens/login/loginScreen.dart';
import 'package:frontend/presentation/screens/organizer/organizerScreen.dart';
import 'package:frontend/presentation/screens/routes/appRouteConstants.dart';
import 'package:go_router/go_router.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Login integration test', () {
    testWidgets('login as user and redirect to organizer screen',
        (WidgetTester tester) async {
      // create the login screen widget
      final loginScreen = Login();

      // pump the widget
      await tester.pumpWidget(MaterialApp(home: loginScreen));

      // wait for 2 seconds
      await tester.pumpAndSettle(const Duration(seconds: 2));

      // tap the user checkbox
      await tester.tap(find.text('Organizer'));

      // wait for 2 seconds
      await tester.pumpAndSettle(const Duration(seconds: 2));

      // enter the email
      await tester.enterText(find.byKey(const ValueKey('email')), 'l@gmail.com');

      // wait for 2 seconds
      await tester.pumpAndSettle(const Duration(seconds: 2));

      // enter the password
      await tester.enterText(find.byKey(const ValueKey('password')), '123');

      // wait for 2 seconds
      await tester.pumpAndSettle(const Duration(seconds: 2));

      // tap the login button
      await tester.tap(find.text('Login'));

      // wait for 10 seconds
      await tester.pumpAndSettle(const Duration(seconds: 10));

      // verify that the organizer screen is displayed
      expect(find.byKey(const ValueKey('organizer_screen')), findsOneWidget);
      expect(GoRouter.of(tester.element(find.byKey(const ValueKey('organizer_screen')))).location, MyAppRouteConstants.organizerScreenRouteName);
    });
  });
}