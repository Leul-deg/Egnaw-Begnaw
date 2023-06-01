import 'package:flutter/material.dart';
import './homePage/homePage.dart';
import './pastEvents/pastEvent.dart';
import './profile/profilePage.dart';
import './myTickets/myTickets.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
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
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.airplane_ticket),
              label: 'My Tickets',
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
        return const PastEvent();
      case 1:
        return MyTicket();
      case 2:
        return ProfilePage();
    }
    return Container();
  }
}
