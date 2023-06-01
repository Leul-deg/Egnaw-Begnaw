import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/ticket/ticket_create/ticket_create_bloc.dart';

class BuyTicketsBtn extends StatefulWidget {
  const BuyTicketsBtn({super.key});

  @override
  State<BuyTicketsBtn> createState() => _BuyTicketsBtnState();
}

class _BuyTicketsBtnState extends State<BuyTicketsBtn> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 25),
          width: 300,
          height: 100,
          child: ElevatedButton(
            onPressed: () {
              context.read<TicketCreateBloc>().add(
                  TicketCreateEvent.ticketCreatePressed(
                      '6475978b21b437dece3bc330'));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[300],
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
            child: const Padding(
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
