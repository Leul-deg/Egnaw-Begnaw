import 'package:flutter/material.dart';
import './card.dart';
import './seachBar.dart';


class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<Widget> cards = [const Card1(), const Card1(), const Card1()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Page',
      home: Scaffold(
        appBar: MySearchBar(
          onSearch: (value) => true,
        ),
        body: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            return SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.asset(
                            'musician.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: orientation == Orientation.portrait ? 30 : 10,
                          left: 10,
                          child: const Text(
                            'Event Ticketing App',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                            top: orientation == Orientation.portrait ? 80 : 50,
                            left: 10,
                            child: const Text(
                              'Get tickets for your exciting moments',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ))
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Collections',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.separated(
                        itemCount: cards.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          final Widget card = cards[index];
                          return Expanded(child: card);
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(width: 16);
                        },
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Collections',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.separated(
                        itemCount: cards.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          final Widget card = cards[index];
                          return Expanded(child: card);
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(width: 16);
                        },
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Collections',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.separated(
                        itemCount: cards.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          final Widget card = cards[index];
                          return Expanded(child: card);
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(width: 16);
                        },
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Collections',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.separated(
                        itemCount: cards.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          final Widget card = cards[index];
                          return Expanded(child: card);
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(width: 16);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
