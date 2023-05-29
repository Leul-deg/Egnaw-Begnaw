import 'package:flutter/material.dart';

import './upcomingEvent/upcoming.dart';
import 'profile/profile.dart';
import 'pastEvent/pastEvent.dart';
import './eventCreate/eventCreate.dart';
import './profile/profilePage.dart';
import '../routes/appRouteConstants.dart';


class OrganizerScreen extends StatefulWidget {
  OrganizerScreen({
    super.key,
  });

  @override
  State<OrganizerScreen> createState() => _OrganizerScreenState();
}

class _OrganizerScreenState extends State<OrganizerScreen> {
  bool toHomePage = true;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Screen',
      home: Scaffold(
        body: _getPage(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.event),
              label: 'Your Events',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return UpcomingEvents();
      case 1:
        return EventCreate();
      case 2:
        return ProfilePage();
    }
    return Container();
  }
}
