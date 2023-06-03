import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/ticket/ticket_create/ticket_create_bloc.dart';
import 'package:frontend/infrastructure/ticket/data_sources/ticket_data_sources.dart';
import 'package:frontend/infrastructure/ticket/repositories/ticket_repository_imp.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BuyTicketBtn extends StatefulWidget {
  const BuyTicketBtn({super.key, required this.eventId});

  final String eventId;

  @override
  State<BuyTicketBtn> createState() => _BuyTicketBtnState();
}

class _BuyTicketBtnState extends State<BuyTicketBtn> {
  var organizerData;

  @override
  void initState() {
    print('init called ajkdfhkjasdhfk');
    super.initState();

    getOrganizer();
  }

  getOrganizer() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      organizerData = json.decode(prefs.getString('userData')!);
      print(organizerData);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TicketCreateBloc(
        TicketRepositoryImp(
          ticketDataSource: TicketDataSource(),
        ),
      ),
      child: BlocConsumer<TicketCreateBloc, TicketCreateState>(
        listener: (context, state) {
          // show snack bar state.createFailureOrSuccessOption
          state.createFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (failure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      failure.map(
                        serverError: () => 'Server Error',
                        invalidTicket: () => 'Invalid Ticket',
                        insufficientPermission: () => 'Insufficient Permission',
                        unableToDelete: () => 'Unable to delete',
                        unableToUpdate: () => 'Unable to update',
                        unexpectedError: () => 'Unexpected Error',
                      ),
                    ),
                  ),
                );
              },
              (_) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Ticket Created'),
                    backgroundColor: Colors.green,
                  ),
                );
              },
            ),
          );
        },
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  width: 300,
                  height: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<TicketCreateBloc>().add(
                            TicketCreateEvent.ticketCreatePressed(widget.eventId),
                          );
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
                        'Buy Ticket',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  )),
            ),
          );
        },
      ),
    );
  }
}
