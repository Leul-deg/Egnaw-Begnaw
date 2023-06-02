import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:frontend/domain/organizer/organizer.dart';
import 'package:frontend/infrastructure/organizer/data_sources/organizer_data_sources.dart';
import 'package:frontend/infrastructure/organizer/repositories/organizer_repository_imp.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'user.dart';
import 'userPreference.dart';

import 'profileWidget.dart';
import 'editProfilePage.dart';

import 'package:frontend/application/organizer/organizer_update/organizer_update_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../routes/appRouteConstants.dart';

class ProfilePage extends StatefulWidget {
  // const ProfilePage({super.key});
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var organizer;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    final prefs = await SharedPreferences.getInstance();
    final userData = prefs.getString('userData');

    // print(userData);

    if (userData != null) {
      setState(() {
        print('setting state');
        // print(json.decode(userData));
        organizer = json.decode(userData);
        print('user data set');
      });
      print('after set state');
      // print(json.decode(userData));
    } else {
      print('no user data');
    }
  }

  @override
  Widget build(BuildContext context) {
    // final user = UserPreferences.myUser;

    return Builder(
      builder: (context) => Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => GoRouter.of(context)
                .pushNamed(MyAppRouteConstants.organizerScreenRouteName),
          ),
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              imagePath: json.decode(organizer)['profileImage'],
              onClicked: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => BlocProvider(
                            create: (context) => OrganizerUpdateBloc(
                                OrganizerRepositoryImp(
                                    organizerDataSource:
                                        OrganizerDataSource())),
                            child: EditProfilePage(),
                          )),
                );
              },
            ),
            const SizedBox(height: 24),
            buildName(),
            const SizedBox(height: 48),
          ],
        ),
      ),
    );
  }

  Widget buildName() => Column(
        children: [
          Text(
            json.decode(organizer)['organizationName'],
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            json.decode(organizer)['email'],
            style: TextStyle(color: Colors.grey),
          )
        ],
      );

  //

  Widget buildAbout() => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              'user.about',
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}
