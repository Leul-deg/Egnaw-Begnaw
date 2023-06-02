import 'package:flutter/material.dart';
import './components/body.dart';
import 'package:go_router/go_router.dart';
import '../../routes/appRouteConstants.dart';

class EditEvent extends StatelessWidget {
  const EditEvent({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Your Event',
          style: TextStyle(
            fontSize: screen.width > 600 ? 40 : 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'roboto',
          ),
        ),
        leading: BackButton(
          onPressed: () => GoRouter.of(context)
              .pushNamed(MyAppRouteConstants.eventDetailRouteName),
        ),
      ),
      body: Body(),
    );
  }
}
