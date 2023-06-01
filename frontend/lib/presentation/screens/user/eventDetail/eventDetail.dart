import 'package:flutter/material.dart';
import 'package:frontend/application/event/event_get/event_get_bloc.dart';
import 'package:frontend/application/ticket/ticket_create/ticket_create_bloc.dart';
import 'package:frontend/infrastructure/event/data_sources/event_data_sources.dart';
import 'package:frontend/infrastructure/event/repositories/event_repository_imp.dart';
import 'package:frontend/infrastructure/ticket/data_sources/ticket_data_sources.dart';
import './components/body.dart';
import 'package:go_router/go_router.dart';
import '../../routes/appRouteConstants.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class EventDetail extends StatelessWidget {
  const EventDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TicketCreateBloc>(
          create: (context) => TicketCreateBloc(
            TicketDataSource(),
          ),
        ),
        BlocProvider<EventGetBloc>(
          create: (context) => EventGetBloc(
            EventRepositoryImp(
              eventDataSource: EventDataSource(),
            ),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'EventDetails',
        home: Scaffold(
          appBar: AppBar(
            leading: BackButton(
              onPressed: () => GoRouter.of(context)
                  .pushNamed(MyAppRouteConstants.userScreenRouteName),
            ),
          ),
          body: Body(),
        ),
      ),
    );
  }
}
