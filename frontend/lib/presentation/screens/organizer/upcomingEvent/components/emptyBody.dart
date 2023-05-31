import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import '../../../routes/appRouteConstants.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      title: 'Upcoming Events',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[100],
          title: Center(
              child: Text(
            'Your Events',
            style: TextStyle(color: Colors.blue),
          )),
        ),
        body: SafeArea(
            child: Center(
          child: Text(
            'You don\'t have an upcoming event',
            style: TextStyle(fontSize: 20),
          ),
        )),
      ),
    );
  }
}
