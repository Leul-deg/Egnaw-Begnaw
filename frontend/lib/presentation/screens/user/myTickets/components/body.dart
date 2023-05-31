import 'package:flutter/material.dart';
import './eventCards.dart';
import 'package:go_router/go_router.dart';
import '../../../routes/appRouteConstants.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List eventCards = [
    EventCards(
      title: 'Rophnan Concert',
    ),
    EventCards(
      title: 'Rophnan Concert',
    ),
    EventCards(
      title: 'Rophnan Concert',
    ),
    EventCards(
      title: 'Rophnan Concert',
    ),
    EventCards(
      title: 'Rophnan Concert',
    ),
    EventCards(
      title: 'Rophnan Concert',
    ),
    EventCards(
      title: 'Rophnan Concert',
    ),
    EventCards(
      title: 'Rophnan Concert',
    ),
    EventCards(
      title: 'Rophnan Concert',
    ),
    EventCards(
      title: 'Rophnan Concert',
    ),
    EventCards(
      title: 'Rophnan Concert',
    ),
    EventCards(
      title: 'Rophnan Concert',
    ),
    EventCards(
      title: 'Rophnan Concert',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Upcoming Events',
      home: SafeArea(
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
                              MyAppRouteConstants.eventDetail1RouteName);
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
  }
}
