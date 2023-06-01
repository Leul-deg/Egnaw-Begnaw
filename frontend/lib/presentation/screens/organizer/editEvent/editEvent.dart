import 'package:flutter/material.dart';
import './components/body.dart';
import 'package:go_router/go_router.dart';
import '../../routes/appRouteConstants.dart';

class EditEvent extends StatelessWidget {
  const EditEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => GoRouter.of(context)
              .pushNamed(MyAppRouteConstants.eventDetail1RouteName),
        ),
      ),
      body: Body(),
    );
  }
}
