import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/ticket/ticket_get/ticket_get_bloc.dart';
import 'package:frontend/infrastructure/ticket/data_sources/ticket_data_sources.dart';
import 'package:frontend/infrastructure/ticket/repositories/ticket_repository_imp.dart';
import './components/body.dart';
import 'package:go_router/go_router.dart';
import '../../routes/appRouteConstants.dart';

class MyTicket extends StatelessWidget {
  const MyTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TicketGetBloc(
        TicketRepositoryImp(
          ticketDataSource: TicketDataSource(),
        ),
      ),
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}
