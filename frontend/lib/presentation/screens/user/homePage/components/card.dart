import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import '../../../routes/appRouteConstants.dart';

class Card1 extends StatefulWidget {
  const Card1({super.key});

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
                        .pushNamed(MyAppRouteConstants.eventDetailRouteName);
      },
      child: Container(
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints.expand(
            width: 300,
            height: 250,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/card1.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: const Stack(
            children: [
              Positioned(
                  top: 20,
                  child: Text(
                    'Rophnan Music Concert',
                  )),
              Positioned(
                  bottom: 30,
                  right: 0,
                  child: Text(
                    'Aster Aweke',
                  )),
            ],
          )),
    );
  }
}