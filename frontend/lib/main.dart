import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:flutter/material.dart';

void main() async {
  await dotenv.load(fileName: "./.env");
  runApp(const MyApp());
}

// MyApp widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      title: 'MyApp',
      home: Scaffold(
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
