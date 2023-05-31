import 'package:flutter/material.dart';
import './components/body.dart';
import 'package:go_router/go_router.dart';
import '../../routes/appRouteConstants.dart';

class EventDetail extends StatelessWidget {
  const EventDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EventDetails',
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => GoRouter.of(context)
                .pushNamed(MyAppRouteConstants.userScreenRouteName),
          ),
        ),
        body: Body(),
      ),
    );
  }
}
