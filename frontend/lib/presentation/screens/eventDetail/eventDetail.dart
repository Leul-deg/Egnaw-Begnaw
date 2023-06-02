import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/event/event_get/event_get_bloc.dart';
import 'package:frontend/domain/event/models/event_model/event_model.dart';
import 'package:frontend/infrastructure/auth/data_sources/auth_data_sources.dart';
import 'package:frontend/infrastructure/event/data_sources/event_data_sources.dart';
import 'package:frontend/infrastructure/event/repositories/event_repository_imp.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './components/body.dart';
import 'package:go_router/go_router.dart';
import '../routes/appRouteConstants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../routes/appRouteConstants.dart';
import 'package:go_router/go_router.dart';

class EventDetails extends StatefulWidget {
  EventDetails({super.key, required this.eventId});

  String eventId;

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  bool isOrganizer = false;

  @override
  initState() {
    super.initState();
    checkUser();
  }

  checkUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var user = json.decode(prefs.getString('userData')!);
    var userMap = json.decode(user!);
    if (userMap['organizationName'] != null) {
      setState(() {
        isOrganizer = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EventDetails',
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(onPressed: () {
            if (isOrganizer) {
              GoRouter.of(context)
                  .pushNamed(MyAppRouteConstants.organizerScreenRouteName);
            } else {
              print('routing...');
              GoRouter.of(context)
                  .pushNamed(MyAppRouteConstants.userScreenRouteName);
            }
          }),
          actions: [
            if (isOrganizer)
              PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 'delete',
                    child: Text('Delete event'),
                  ),
                ],
                onSelected: (value) {
                  if (value == 'delete') {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Confirm Action'),
                          content: Text(
                              'Are you sure you want to delete this event?'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('Cancel'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            TextButton(
                              child: Text(
                                'Delete',
                                style: TextStyle(color: Colors.red),
                              ),
                              onPressed: () {
                                // Perform the action
                                // Close the dialog box
                                final eventDs = EventDataSource();

                                eventDs.deleteEvent(widget.eventId);
                                print('deleted');

                                GoRouter.of(context).pushNamed(
                                    MyAppRouteConstants
                                        .organizerScreenRouteName);

                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                icon: Icon(Icons.more_vert),
              ),
          ],
        ),
        body: BlocProvider(
          create: (context) => EventGetBloc(
              EventRepositoryImp(eventDataSource: EventDataSource())),
          child: Body(
            eventId: widget.eventId,
          ),
        ),
      ),
    );
  }
}
