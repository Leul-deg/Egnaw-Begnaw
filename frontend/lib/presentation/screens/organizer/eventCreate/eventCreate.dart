import 'package:flutter/material.dart';
import './components/body.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/event/event_create/event_create_bloc.dart';

import 'package:frontend/infrastructure/event/repositories/event_repository_imp.dart';
import 'package:frontend/infrastructure/event/data_sources/event_data_sources.dart';

class EventCreate extends StatelessWidget {
  const EventCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EventCreateBloc(
        EventRepositoryImp(
          eventDataSource: EventDataSource(),
        ),
      ),
      child: Body(),
    );
  }
}
