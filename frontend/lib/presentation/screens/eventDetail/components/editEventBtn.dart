import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import '../../routes/appRouteConstants.dart';

class EditEventBtn extends StatelessWidget {

  EditEventBtn({super.key, required this.eventId, required this.eventTitle, required this.eventPlace, required this.eventDescription });
  String eventId;
  String eventTitle;
  String eventPlace;
  String eventDescription;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 25),
          width: 300,
          height: 100,
          child: ElevatedButton(
            onPressed: () {
              GoRouter.of(context).pushNamed(
                  MyAppRouteConstants.eventEditRouteName,
                  queryParameters: {'eventId': eventId, 'eventTitle': eventTitle, 'eventPlace': eventPlace, 'eventDescription': eventDescription});
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
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
