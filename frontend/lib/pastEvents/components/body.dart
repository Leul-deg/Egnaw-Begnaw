import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/event/event_get/event_get_bloc.dart';

import './thumbnail.dart';
import './mySearchBar.dart';

import 'package:intl/intl.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    super.initState();
    context.read<EventGetBloc>().add(EventGetEvent.getAllEvents());
  }

  String? endTimes;

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Past Event',
      home: BlocConsumer<EventGetBloc, EventGetState>(
        listener: (context, state) {
          // show snackbar
          if (state.isError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Could not get events, please try again'),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        builder: (context, state) {
          List thumbnails = [];

          if (state.events.isNotEmpty) {
            for (var event in state.events) {
              final dateTime = DateTime.parse(event['startTime']);
              final formattedDate = DateFormat.yMMMMd().format(dateTime);

              thumbnails.add(Thumbnail(
                eventName: 'Event Name',
                endTime: formattedDate,
              ));
            }
          }

          return Scaffold(
            appBar: MySearchBar(
              onSearch: (value) => true,
            ),
            body: OrientationBuilder(
              builder: (BuildContext context, Orientation orientation) {
                return Padding(
                  padding: EdgeInsets.only(
                    left: screen.width * 0.03,
                    right: screen.width * 0.03,
                    top: screen.height * 0.02,
                  ),
                  child: GridView.builder(
                    itemCount: thumbnails.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          orientation == Orientation.portrait ? 2 : 3,
                      childAspectRatio: orientation == Orientation.portrait
                          ? screen.width / (screen.height * 0.8)
                          : screen.width / (screen.height * 1.3),
                      crossAxisSpacing: screen.width * 0.02,
                      mainAxisSpacing: screen.height * 0.03,
                    ),
                    itemBuilder: (context, index) {
                      final thumbnail = thumbnails[index];
                      return Expanded(
                        child: thumbnail,
                      );
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
