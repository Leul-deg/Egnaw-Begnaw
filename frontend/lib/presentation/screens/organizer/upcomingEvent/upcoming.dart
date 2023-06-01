import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/event/event_get/event_get_bloc.dart';
import 'package:frontend/infrastructure/event/data_sources/event_data_sources.dart';
import 'package:frontend/infrastructure/event/repositories/event_repository_imp.dart';
import '../upcomingEvent/components/body.dart';

class UpcomingEvents extends StatelessWidget {
  const UpcomingEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EventGetBloc(
        EventRepositoryImp(eventDataSource: EventDataSource()),
      ),
      child: Body(),
    );
  }
}
