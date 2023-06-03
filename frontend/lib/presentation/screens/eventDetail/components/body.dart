import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/event/event_get/event_get_bloc.dart';
import 'package:frontend/presentation/screens/eventDetail/components/buyTicketBtn.dart';
import 'package:intl/intl.dart';
import './editEventBtn.dart';
import './organizerBtn.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Body extends StatefulWidget {
  String eventId;
  Body({Key? key, required this.eventId}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isOrganizer = false;

  @override
  initState() {
    super.initState();
    BlocProvider.of<EventGetBloc>(context)
        .add(EventGetEvent.getEventById(widget.eventId));

    checkUser();
  }

  checkUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var user = json.decode(prefs.getString('userData')!);
    var userMap = json.decode(user!);
    if (userMap['organizationName'] != null) {
      setState(() {
        isOrganizer = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    print('here in the page');
    print('here is the id i got hereereeee');
    print(widget.eventId);
    print('see it?');
    return BlocConsumer<EventGetBloc, EventGetState>(
      listener: (context, state) {
        // show snackbar
        if (state.isError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Could not load event details'),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        var event = state.event;

        print('here is the id i recieved');
        print(widget.eventId);

        return Scaffold(
          body: LayoutBuilder(
            builder: (context, constraints) {
              final screen = MediaQuery.of(context).size;

              return SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Column(children: [
                    Container(
                      constraints: BoxConstraints.expand(
                        width: double.infinity,
                        height: screen.height * 0.4,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              event['profileImage'] ?? 'assets/musician.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: screen.height * 0.02),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: constraints.maxWidth * 0.05,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            event['title'] ?? 'Rophnan Concert',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: screen.height * .02),
                          Row(children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Start Time',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: screen.height * 0.013),
                                  Row(
                                    children: [
                                      Icon(Icons.timer),
                                      SizedBox(width: screen.width * 0.01),
                                      Text(
                                        DateFormat('yyyy-MM-dd HH:mm').format(
                                            DateTime.parse(event['startTime'] ??
                                                '2021-09-09 09:09')),
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                        ),
                                      ),
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
                                  Text(
                                    'End Time',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: screen.height * 0.013),
                                  Row(
                                    children: [
                                      Icon(Icons.timer),
                                      SizedBox(width: screen.width * 0.01),
                                      Text(
                                        DateFormat('yyyy-MM-dd HH:mm').format(
                                            DateTime.parse(event['endTime'] ??
                                                '2021-09-09 09:09')),
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ]),
                          SizedBox(height: screen.height * 0.01),
                          Row(
                            children: [
                              Icon(Icons.location_pin),
                              SizedBox(width: screen.width * 0.01),
                              Text(
                                event['place'] ?? '-',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screen.height * 0.01),
                          Row(
                            children: [
                              Text(
                                'Available Seats',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(width: screen.width * 0.02),
                              // show the availableseats if exists else '0'
                              Text(
                                event['availableSeats'] != null
                                    ? event['availableSeats'].toString()
                                    : '0',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: screen.width * 0.02),
                            ],
                          ),
                          SizedBox(height: screen.height * 0.01),
                          Row(
                            children: [
                              Text(
                                'Tickets Sold',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(width: screen.width * 0.02),
                              Text(
                                event['ticketsSold'] != null
                                    ? event['ticketsSold'].toString()
                                    : '0',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screen.height * 0.01),
                          Text(
                            'Details',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(height: screen.height * 0.01),
                          Text(
                            event['description'] ?? '-',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),

                          SizedBox(height: screen.height * 0.02),

                          // show the EditButton widget if the user isOrganizer
                          if (isOrganizer)
                            EditEventBtn(
                              eventId: event['_id'] ?? '',
                              eventTitle: event['title'] ?? '',
                              eventDescription: event['description'] ?? '',
                              eventPlace: event['place'] ?? '',
                            ),
                          if (!isOrganizer)
                            BuyTicketBtn(eventId: event['_id'] ?? ''),
                          // else show TicketBuy btn
                          // if (!isOrganizer)
                          //   ,
                          SizedBox(height: screen.height * 0.02),
                        ],
                      ),
                    )
                  ]));
            },
          ),
        );
      },
    );
  }
}
