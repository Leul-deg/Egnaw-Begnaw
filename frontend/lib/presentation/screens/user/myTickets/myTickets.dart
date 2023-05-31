import 'package:flutter/material.dart';
import './components/body.dart';
import 'package:go_router/go_router.dart';
import '../../routes/appRouteConstants.dart';

class MyTicket extends StatelessWidget {
  const MyTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyTickets',
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            'Past Events',
            style: TextStyle(color: Colors.blue),
          )),
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
