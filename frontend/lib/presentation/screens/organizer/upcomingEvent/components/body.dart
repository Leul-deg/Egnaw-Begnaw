import 'package:flutter/material.dart';
import '../../eventCreate/eventCreate.dart';
import '../../eventDetail/eventDetail.dart';
import './eventCards.dart';

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
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Center(child: Text('Your Events')),
        ),
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EventDetail(),
                              ),
                            );
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
      ),
    );
  }
}
