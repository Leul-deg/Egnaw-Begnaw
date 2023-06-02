import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/event/event_get/event_get_bloc.dart';
import 'package:frontend/application/event/event_update/event_update_bloc.dart';
import './datePicker.dart';
import './timepicker.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();

  Body(
      {Key? key,
      required this.eventTitle,
      required this.eventId,
      required this.eventDescription,
      required this.eventPlace})
      : super(key: key);

  String eventTitle;
  String eventDescription;
  String eventPlace;
  String eventId;
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('here is the title i got ${widget.eventTitle}');
    final screen = MediaQuery.of(context).size;
    return BlocConsumer<EventUpdateBloc, EventUpdateState>(
      listener: (context, state) {
        // show snackbar based on state.updateFailureOrSuccessOption
        state.updateFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Could not update event'),
                  backgroundColor: Colors.red,
                ),
              );
            },
            (success) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Event updated successfully'),
                  backgroundColor: Colors.green,
                ),
              );
            },
          ),
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screen.width > 600 ? screen.width * 0.15 : 18,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BlocConsumer<EventGetBloc, EventGetState>(
                    listener: (context, state) {
                      if (state.isError) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Could not update event'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    },
                    builder: (context, state) {
                      print('here is the event to be edited');
                      var event = state.event;

                      print(event['title']);
                      return Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 13),
                            TextFormField(
                              initialValue: widget.eventTitle,
                              decoration: InputDecoration(
                                labelText: 'Event Title',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(17.0),
                                ),
                              ),
                              onChanged: (val) {
                                context.read<EventUpdateBloc>().add(
                                      EventUpdateEvent.titleChanged(val),
                                    );
                              },
                            ),
                            SizedBox(height: 17),
                            TextFormField(
                              initialValue: widget.eventDescription,
                              decoration: InputDecoration(
                                labelText: 'Event Details (optional)',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(17.0),
                                ),
                              ),
                              maxLines: 3,
                              onChanged: (val) {
                                context.read<EventUpdateBloc>().add(
                                      EventUpdateEvent.descriptionChanged(val),
                                    );
                              },
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Start Time',
                                      style: TextStyle(
                                        fontSize: screen.width > 600 ? 24 : 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: screen.width > 600 ? 20 : 7,
                                    ),
                                    TimePicker(
                                      isEnd: false,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'End Time',
                                      style: TextStyle(
                                        fontSize: screen.width > 600 ? 24 : 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: screen.width > 600 ? 20 : 7,
                                    ),
                                    TimePicker(isEnd: true),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: screen.width > 600 ? 30 : 15,
                            ),
                            Divider(),
                            Center(child: DatePicker()),
                            SizedBox(height: 20),
                            TextFormField(
                              initialValue: widget.eventPlace.toString(),
                              decoration: InputDecoration(
                                labelText: 'Location',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(17.0),
                                ),
                              ),
                              onChanged: (val) {
                                setState(() {});
                              },
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              initialValue: event['profileImage'] ?? '',
                              decoration: InputDecoration(
                                labelText: 'Image Link',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(17.0),
                                ),
                              ),
                              onChanged: (val) {
                                setState(() {});
                              },
                            ),
                            SizedBox(height: screen.width > 600 ? 40 : 20),
                            Center(
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.blue),
                                  minimumSize: MaterialStateProperty.all(
                                    Size(screen.width > 600 ? 300 : 200, 50),
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  print('got pressed');
                                  context.read<EventUpdateBloc>().add(
                                        EventUpdateEvent.eventUpdatePressed(
                                          widget.eventId,
                                        ),
                                      );
                                },
                                child: Text(
                                  'Submit',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
