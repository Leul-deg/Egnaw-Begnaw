import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/event/event_get/event_get_bloc.dart';
import 'package:frontend/domain/event/models/event_model/event_model.dart';
import 'package:frontend/infrastructure/event/data_sources/event_data_sources.dart';
import 'package:frontend/infrastructure/event/repositories/event_repository_imp.dart';
import './components/body.dart';
import 'package:go_router/go_router.dart';
import '../routes/appRouteConstants.dart';

class EventDetails extends StatelessWidget {
  EventDetails({super.key, required this.eventId});

  String eventId;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EventDetails',
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => GoRouter.of(context)
                .pushNamed(MyAppRouteConstants.organizerScreenRouteName),
          ),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 'delete',
                  child: Text('Delete event'),
                ),
              ],
              onSelected: (value) {
                if (value == 'delete') {
                  // Perform delete operation
                }
              },
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: BlocProvider(
          create: (context) => EventGetBloc(
              EventRepositoryImp(eventDataSource: EventDataSource())),
          child: Body(eventId: eventId,),
        ),
      ),
    );
  }
}
