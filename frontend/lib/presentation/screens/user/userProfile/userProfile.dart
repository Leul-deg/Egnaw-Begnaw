import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../routes/appRouteConstants.dart';

class UserProfile extends StatefulWidget {
  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {

  var organizerData;

  @override
  void initState() {
    super.initState();

    getOrganizer();
  }

  getOrganizer() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      organizerData = json.decode(prefs.getString('userData')!);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
            onPressed: () => GoRouter.of(context)
                .pushNamed(MyAppRouteConstants.userScreenRouteName),
          ),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                    child: ListTile(
                  leading: Icon(
                    Icons.delete,
                  ),
                  title: Text('Delete account'),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Confirm Action'),
                          content: Text(
                              'Are you sure you want to delete this account?'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('Cancel'),
                              onPressed: () {
                                // Close the dialog box
                                Navigator.of(context).pop();
                              },
                            ),
                            TextButton(
                              child: Text(
                                'Delete',
                                style: TextStyle(color: Colors.red),
                              ),
                              onPressed: () {
                                GoRouter.of(context).pushNamed(
                                    MyAppRouteConstants.welcomeRouteName);
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                )),
                PopupMenuItem(
                    child: ListTile(
                  leading: Icon(
                    Icons.logout,
                  ),
                  title: Text('Logout'),
                  onTap: () async {
                    final SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    print("loggin out ");
                    prefs.remove('jwt_token');
                    prefs.remove('userData');

                    GoRouter.of(context)
                        .pushNamed(MyAppRouteConstants.welcomeRouteName);
                  },
                ))
              ],
              icon: Icon(Icons.more_vert),
            )
          ]),
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
                                GoRouter.of(context).pushNamed(
                                    MyAppRouteConstants
                                        .editUserProfilePageRouteName);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: constraints.maxHeight * 0.02),
                    Text(
                      json.decode(organizerData)['firstName'] + " " + json.decode(organizerData)['lastName'],
                      style: TextStyle(
                        fontSize: constraints.maxHeight * 0.035,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: constraints.maxHeight * 0.01),
                    Text(
                      json.decode(organizerData)['email'],
                      style: TextStyle(
                        fontSize: constraints.maxHeight * 0.02,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.56,
                left: 16,
                right: 16,
                child: Card(
                  elevation: 6,
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your profile',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Name: ${json.decode(organizerData)['firstName'] + " " + json.decode(organizerData)['lastName']}',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Email: ${json.decode(organizerData)['email']}',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        // Add any additional information here
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
