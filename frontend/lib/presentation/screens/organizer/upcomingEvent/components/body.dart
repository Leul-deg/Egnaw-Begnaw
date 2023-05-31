import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../routes/appRouteConstants.dart';
import './eventCards.dart';

class Body extends StatefulWidget {
  const Body({Key? key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<EventCards> eventCards = List.generate(
    13,
    (index) => EventCards(
      title: 'Rophnan Concert',
    ),
  );

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
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
                  context.pushNamed(MyAppRouteConstants.eventDetail1RouteName);
                  // GoRouter.of(context)
                  //     .pushNamed(MyAppRouteConstants.eventDetail1RouteName);
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
  }
}
