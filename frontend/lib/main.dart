import 'package:flutter/material.dart';

import './constants.dart';

import 'package:shared_preferences/shared_preferences.dart';
import './presentation/screens/routes/appRouteConfig.dart';

SharedPreferences? prefs;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Welcome',
      theme: ThemeData(
          primaryColor: kPrimaryColor, scaffoldBackgroundColor: Colors.white),
      // routeInformationParser: MyAppRoute().router.routeInformationParser,
      // routerDelegate: MyAppRoute().router.routerDelegate,
    );
  }
}
