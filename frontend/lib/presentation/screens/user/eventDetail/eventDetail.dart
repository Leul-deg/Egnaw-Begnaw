import 'package:flutter/material.dart';
import 'package:frontend/application/ticket/ticket_create/ticket_create_bloc.dart';
import 'package:frontend/infrastructure/ticket/data_sources/ticket_data_sources.dart';
import './components/body.dart';
import 'package:go_router/go_router.dart';
import '../../routes/appRouteConstants.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class EventDetail extends StatelessWidget {
  const EventDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EventDetails',
      home: BlocProvider(
        create: (context) => TicketCreateBloc(
          TicketDataSource(),
        ),
        child: Scaffold(
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
