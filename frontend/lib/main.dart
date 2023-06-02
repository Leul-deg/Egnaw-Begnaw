import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'presentation/screens/routes/appRouteConfig.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'application/auth/user_data/user_data_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

SharedPreferences? prefs;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Event Detail App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      routeInformationParser: MyAppRoute().router.routeInformationParser,
      routerDelegate: MyAppRoute().router.routerDelegate,
    );
  }
}
