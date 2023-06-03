import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/ticket/ticket_get/ticket_get_bloc.dart';
import './eventCards.dart';
import 'package:go_router/go_router.dart';
import '../../../routes/appRouteConstants.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    super.initState();
    // get tickets
    context.read<TicketGetBloc>().add(TicketGetEvent.getTicketsByUserId());
  }

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return BlocConsumer<TicketGetBloc, TicketGetState>(
      listener: (context, state) {
        // show snackbar
        if (state.isError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Could not get tickets, please try again'),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        List eventCards = [];

        print(state.tickets);

        // populate eventCards from the state
        if (state.tickets.isNotEmpty) {
          print('here is the ticket in the ui');
          print(state.tickets);
          for (var ticket in state.tickets) {
            eventCards.add(EventCards(
              title: json.decode(ticket['eventId'])['title'],
            ));
          }
        }

        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListView.separated(
                        itemCount: eventCards.length,
                        itemBuilder: (context, index) {
                          final eventCard = eventCards[index];
                          return GestureDetector(
                            onTap: () {
                              GoRouter.of(context).pushNamed(
                                  MyAppRouteConstants.eventDetailRouteName);
                            },
                            child: eventCard,
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 16);
                        },
                      )),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
