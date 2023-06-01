import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/event/event_get/event_get_bloc.dart';
import 'package:frontend/application/ticket/ticket_create/ticket_create_bloc.dart';
import 'package:frontend/domain/event/models/event_model/event_model.dart';
import './buyTicketsBtn.dart';
import './organizerBtn.dart';

import 'package:intl/intl.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Event Detail', home: EventDetail());
  }
}

class EventDetail extends StatefulWidget {
  const EventDetail({super.key});

  @override
  State<EventDetail> createState() => _EventDetailState();
}

class _EventDetailState extends State<EventDetail> {
  @override
  void initState() {
    super.initState();
    print('triggering get event by id');
    context.read<EventGetBloc>().add(
          EventGetEvent.getEventById('6475978b21b437dece3bc330'),
        );
  }

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return BlocConsumer<TicketCreateBloc, TicketCreateState>(
      listener: (context, state) {
        // show snackbar
        state.createFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              final snackBar = SnackBar(
                content: Text(
                  failure.map(
                    serverError: () => 'Server error',
                    insufficientPermission: () => 'Insufficient Permission',
                    invalidTicket: () => 'Invalid Ticket',
                    unableToDelete: () => 'Unable to Delete',
                    unableToUpdate: () => 'Unable to Update',
                    unexpectedError: () => 'Unexpected Error',
                  ),
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            (_) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Ticket Bought Successfully'),
                ),
              );
            },
          ),
        );
      },
      builder: (context, state) {
        return BlocConsumer<EventGetBloc, EventGetState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            var event;

            print('in the event detail screen');
            print(state.event);

            if (state.event == {}) {
              print('event is null');
              print('triggering get event by id');
              // context.read<EventGetBloc>().add(
              //       EventGetEvent.getEventById('6475978b21b437dece3bc330'),
              //     );
            }

            print('here is the event');
            if (state.event != {}) {
              print("event ain't null");

              print(state.event);

              event = state.event;
              print(event['place']);
            }

            return Scaffold(
              body: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      constraints: BoxConstraints.expand(
                        width: double.infinity,
                        height: screen.height * 0.4,
                      ),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('musician.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [Container()],
                      ),
                    ),
                    SizedBox(height: screen.height * 0.02),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screen.width * 0.05,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Event Name',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: screen.height * 0.02),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Start Time',
                                        style: TextStyle(fontSize: 16)),
                                    SizedBox(height: screen.height * 0.013),
                                    Row(
                                      children: [
                                        const Icon(Icons.timer),
                                        SizedBox(width: screen.width * 0.01),
                                        Text(
                                            DateFormat('yyyy-MM-dd HH:mm')
                                                .format(DateTime.parse(
                                                    event['startTime'] ?? DateTime.now().toString())),
                                            style: TextStyle(
                                                color: const Color.fromARGB(137, 45, 42, 42),
                                                fontSize: 16))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: screen.width * 0.05),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('End Time',
                                        style: TextStyle(fontSize: 16)),
                                    SizedBox(height: screen.height * 0.013),
                                    Row(
                                      children: [
                                        const Icon(Icons.timer),
                                        SizedBox(width: screen.width * 0.01),
                                        Text(DateFormat('yyyy-MM-dd HH:mm')
                                                .format(DateTime.parse(
                                                    event['endTime'] ?? DateTime.now().toString())),
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 16))
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: screen.height * 0.01),
                          Row(
                            children: [
                              const Icon(Icons.location_pin),
                              SizedBox(width: screen.width * 0.01),
                              Text(
                                
                                event['place'] ?? 'place',
                                style: TextStyle(fontSize: 16),
                              )
                            ],
                          ),
                          SizedBox(height: screen.height * 0.01),
                          Row(
                            children: [
                              const Text(
                                'Available Seats',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: screen.width * 0.02),
                              Text(
                                event['availableSeats'].toString() ?? '-',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(height: screen.height * 0.01),
                          Row(
                            children: [
                              const Text(
                                'Tickets Sold',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: screen.width * 0.02),
                              Text(
                                event['ticketsSold'].toString() ?? '-',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(height: screen.height * 0.01),
                          const Text(
                            'Details',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: screen.height * 0.01),
                          Text(
                            event['description'] ?? 'description',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 16),
                          ),
                          SizedBox(height: screen.height * 0.01),
                          const Text(
                            'Organizers',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: screen.height * 0.02),
                          GestureDetector(
                              onTap: () {}, child: const OrganizerBtn()),
                          SizedBox(height: screen.height * 0.02),
                          const BuyTicketsBtn(),
                          SizedBox(height: screen.height * 0.02),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
