import 'package:flutter/material.dart';


class BuyTicketsBtn extends StatelessWidget {
  const BuyTicketsBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 25),
          width: 300,
          height: 100,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[300],
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Buy Tickets',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          )),
    );
  }
}
