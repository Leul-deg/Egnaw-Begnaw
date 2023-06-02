import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/event/event_get/event_get_bloc.dart';
import 'package:frontend/application/event/event_update/event_update_bloc.dart';
import 'package:frontend/infrastructure/event/data_sources/event_data_sources.dart';
import 'package:frontend/infrastructure/event/repositories/event_repository_imp.dart';
import './components/body.dart';
import 'package:go_router/go_router.dart';
import '../../routes/appRouteConstants.dart';

class EditEvent extends StatelessWidget {
  EditEvent({super.key, required this.eventId, required this.eventTitle, required this.eventPlace, required this.eventDescription});

  final String eventTitle;
  final String eventPlace;
  final String eventDescription;
  final String eventId;

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return MultiBlocProvider(
      providers: [
        BlocProvider<EventUpdateBloc>(
          create: (context) => EventUpdateBloc(
            EventRepositoryImp(eventDataSource: EventDataSource()),
          ),
        ),
        BlocProvider<EventGetBloc>(
          create: (context) => EventGetBloc(
            EventRepositoryImp(eventDataSource: EventDataSource()),
          ),
        )
      ],
      child: Scaffold(
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
        body: Body(
          eventTitle: eventTitle,
          eventPlace: eventPlace,
          eventDescription: eventDescription,
          eventId: eventId
        ),
      ),
    );
  }
}