import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import '../../../routes/appRouteConstants.dart';

class EditEventBtn extends StatelessWidget {
  const EditEventBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 25),
          width: 300,
          height: 100,
          child: ElevatedButton(
            onPressed: () {
              GoRouter.of(context)
                  .pushNamed(MyAppRouteConstants.eventEditRouteName);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple[200],
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Edit Event',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          )),
    );
  }
}
