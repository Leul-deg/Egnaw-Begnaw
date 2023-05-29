import 'package:flutter/material.dart';
import './buyTicketsBtn.dart';
import './organizerBtn.dart';


class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Event Detail', home: EventDetail());
  }
}

class EventDetail extends StatefulWidget {
  const EventDetail({super.key});

  @override
  State<EventDetail> createState() => _EventDetailState();
}

class _EventDetailState extends State<EventDetail> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Column(
        children: [
          Container(
            constraints: BoxConstraints.expand(
              width: double.infinity,
              height: screen.height * 0.4,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('musician.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [Container()],
            ),
          ),
          SizedBox(height: screen.height * 0.02),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screen.width * 0.05,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Rophnan Concert',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: screen.height * 0.02),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Start Time', style: TextStyle(fontSize: 16)),
                          SizedBox(height: screen.height * 0.013),
                          Row(
                            children: [
                              const Icon(Icons.timer),
                              SizedBox(width: screen.width * 0.01),
                              const Text('6:00pm - 10:00pm',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 16))
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: screen.width * 0.05),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('End Time', style: TextStyle(fontSize: 16)),
                          SizedBox(height: screen.height * 0.013),
                          Row(
                            children: [
                              const Icon(Icons.timer),
                              SizedBox(width: screen.width * 0.01),
                              const Text('6:00pm - 10:00pm',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 16))
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: screen.height * 0.01),
                Row(
                  children: [
                    const Icon(Icons.location_pin),
                    SizedBox(width: screen.width * 0.01),
                    const Text(
                      'Gihon Hotel - Addis Ababa',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
                SizedBox(height: screen.height * 0.01),
                Row(
                  children: [
                    const Text(
                      'Available Seats',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: screen.width * 0.02),
                    const Text(
                      '500 person',
                      style: TextStyle(color: Colors.black54, fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: screen.height * 0.01),
                Row(
                  children: [
                    const Text(
                      'Tickets Sold',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: screen.width * 0.02),
                    const Text(
                      '365 tickets',
                      style: TextStyle(color: Colors.black54, fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(height: screen.height * 0.01),
                const Text(
                  'Details',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: screen.height * 0.01),
                const Text(
                  'lorem resolving dependencies collections matcher material color utilities source span test api available got dependencies exit code',
                  style: TextStyle(color: Colors.black54, fontSize: 16),
                ),
                SizedBox(height: screen.height * 0.01),
                const Text(
                  'Organizers',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: screen.height * 0.02),
                GestureDetector(onTap: () {}, child: const OrganizerBtn()),
                SizedBox(height: screen.height * 0.02),
                const BuyTicketsBtn(),
                SizedBox(height: screen.height * 0.02),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


