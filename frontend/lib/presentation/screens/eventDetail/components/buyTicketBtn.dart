import 'package:flutter/material.dart';


class BuyTicketBtn extends StatelessWidget {
  const BuyTicketBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 25),
          width: 300,
          height: 100,
          child: ElevatedButton(
            onPressed: () {
              
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Buy Ticket',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          )),
    );
  }
}
