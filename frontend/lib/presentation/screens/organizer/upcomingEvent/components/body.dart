import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/event/event_get/event_get_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../routes/appRouteConstants.dart';
import './eventCards.dart';

class Body extends StatefulWidget {
  const Body({Key? key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    super.initState();
    context.read<EventGetBloc>().add(EventGetEvent.getEventsByOrganizerId());
  }

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return BlocConsumer<EventGetBloc, EventGetState>(
      listener: (context, state) {
        // show snackbar
        if (state.isError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Could not load events, please try again'),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        List<EventCards> eventCards;

        // populate the eventCards from the state
        if (state.events.isNotEmpty) {
          eventCards = state.events
              .map(
                (event) => EventCards(
                  event: event,
                ),
              )
              .toList();
        } else {
          eventCards = [];
        }

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Your Events',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            elevation: 0,
            centerTitle: true,
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.separated(
                itemCount: eventCards.length,
                itemBuilder: (context, index) {
                  final eventCard = eventCards[index];
                  return GestureDetector(
                    onTap: () {
                      context
                          .pushNamed(MyAppRouteConstants.eventDetail1RouteName);
                    },
                    child: eventCard,
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 16);
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
