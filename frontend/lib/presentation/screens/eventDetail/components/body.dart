import 'package:flutter/material.dart';
import './commentCard.dart';
import './editEventBtn.dart';
import './organizerBtn.dart';

class Body extends StatefulWidget {
  const Body({Key? key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final screen = MediaQuery.of(context).size;

          return SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                Container(
                  constraints: BoxConstraints.expand(
                    width: double.infinity,
                    height: screen.height * 0.4,
                  ),
                  decoration: BoxDecoration(
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
                    horizontal: constraints.maxWidth * 0.05,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rophnan Concert',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: screen.height * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Start Time',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: screen.height * 0.013),
                                Row(
                                  children: [
                                    Icon(Icons.timer),
                                    SizedBox(width: screen.width * 0.01),
                                    Text(
                                      '6:00pm',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                      ),
                                    ),
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
                                Text(
                                  'End Time',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: screen.height * 0.013),
                                Row(
                                  children: [
                                    Icon(Icons.timer),
                                    SizedBox(width: screen.width * 0.01),
                                    Text(
                                      '10:00pm',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screen.height * 0.01),
                      Row(
                        children: [
                          Icon(Icons.location_pin),
                          SizedBox(width: screen.width * 0.01),
                          Text(
                            'Gihon Hotel - Addis Ababa',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screen.height * 0.01),
                      Row(
                        children: [
                          Text(
                            'Available Seats',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(width: screen.width * 0.02),
                          Text(
                            '500 person',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screen.height * 0.01),
                      Row(
                        children: [
                          Text(
                            'Tickets Sold',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(width: screen.width * 0.02),
                          Text(
                            '365 tickets',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screen.height * 0.01),
                      Text(
                        'Details',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(height: screen.height * 0.01),
                      Text(
                        'lorem resolving dependencies collections matcher material color utilities source span test api available got dependencies exit code',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: screen.height * 0.01),
                      Text(
                        'Organizers',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(height: screen.height * 0.02),
                      GestureDetector(
                        onTap: () {},
                        child: OrganizerBtn(),
                      ),
                      SizedBox(height: screen.height * 0.02),
                      Container(
                        height: constraints.maxHeight * 0.6,
                        child: Column(
                          children: [
                            Container(
                              color: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.all(screen.width * 0.015),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Add a comment',
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                                15.0), // Set the border radius value
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: screen.width * 0.02),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.send),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: screen.height * 0.02),
                            Expanded(
                              child: ListView.separated(
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: commenters.length,
                                itemBuilder: (context, index) {
                                  final comment = commenters[index];
                                  return comment;
                                },
                                separatorBuilder: (context, index) {
                                  return Divider(
                                    thickness: 1,
                                    height: screen.height * 0.01,
                                    color: Colors.grey,
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screen.height * 0.02),
                      EditEventBtn(),
                      SizedBox(height: screen.height * 0.02),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
