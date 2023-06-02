import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'editorganizerprofile.dart';

class OrganizerProfile extends StatefulWidget {
  @override
  State<OrganizerProfile> createState() => _OrganizerProfileState();
}

class _OrganizerProfileState extends State<OrganizerProfile> {
  var organizerData;

  @override
  void initState() {
    print('init called ajkdfhkjasdhfk');
    super.initState();

    getOrganizer();
  }

  getOrganizer() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      organizerData = json.decode(prefs.getString('userData')!);
      print(organizerData);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              // Background image
              Positioned.fill(
                bottom: constraints.maxHeight * 0.7,
                child: SizedBox(
                  height: 40,
                  child: Image.network(
                    'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=873&q=80',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Avatar and name/email info
              Positioned(
                top: constraints.maxHeight * 0.21,
                left: 0, // Adjust the padding as needed
                right: 0,
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          radius: constraints.maxWidth * 0.14,
                          backgroundImage: NetworkImage(
                              'https://media.istockphoto.com/id/1419539600/photo/business-presentation-and-man-on-a-laptop-in-a-corporate-conference-or-office-collaboration.jpg?s=1024x1024&w=is&k=20&c=j9UcrrobYnsnwhrP3jG8Bzr9q5lAYu9Cg28Ne74vJtk='),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                            padding:
                                EdgeInsets.all(constraints.maxWidth * 0.04),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: constraints.maxWidth * 0.05,
                            backgroundColor: Colors.blueGrey,
                            child: IconButton(
                              icon: Icon(Icons.edit, color: Colors.white),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        EditorganizerProfile(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: constraints.maxHeight * 0.02),
                    Text(
                      json.decode(organizerData)['organizationName'] ??
                          'Organizer Name',
                      style: TextStyle(
                        fontSize: constraints.maxHeight * 0.035,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: constraints.maxHeight * 0.01),
                    Text(
                      json.decode(organizerData)['email'] ?? 'Email',
                      style: TextStyle(
                        fontSize: constraints.maxHeight * 0.02,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
