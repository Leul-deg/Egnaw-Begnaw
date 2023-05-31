import 'package:flutter/material.dart';

import './upcomingEvent/upcoming.dart';

import 'pastEvent/pastEvent.dart';
import './eventCreate/eventCreate.dart';
import './profile/profilePage.dart';
import '../routes/appRouteConstants.dart';

class OrganizerScreen extends StatefulWidget {
  OrganizerScreen();

  @override
  _OrganizerScreenState createState() => _OrganizerScreenState();
}

class _OrganizerScreenState extends State<OrganizerScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getPage(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            
            icon: Icon(Icons.event,
            ),
            label: 'Upcoming Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Past Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add Event',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 13, 17, 21),
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return UpcomingEvents();
      case 1:
        return PastEvent();
      case 2:
        return EventCreate();
      case 3:
        return ProfilePage();
    }
    return Container();
  }
}
