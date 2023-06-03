import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/application/auth/login/login_bloc.dart';
import 'package:frontend/presentation/screens/login/components/body.dart';
import 'package:mockito/mockito.dart';
import 'package:frontend/presentation/screens/login/loginScreen.dart';

class MockLoginBloc extends Mock implements LoginBloc {}

void main() {
  group('LoginScreen widget', () {
    late LoginBloc loginBloc;

    setUp(() {
      loginBloc = MockLoginBloc();
    });

    tearDown(() {
      loginBloc.close();
    });

    testWidgets('renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        BlocProvider.value(
          value: loginBloc,
          child: const MaterialApp(
            home: Login(),
          ),
        ),
      );

      expect(find.text('Login'), findsOneWidget);
      expect(find.byType(TextFormField), findsNWidgets(2));
      expect(find.byType(ElevatedButton), findsOneWidget);
    });
  });
}