import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:frontend/domain/user/user.dart';
import 'package:frontend/infrastructure/user/data_sources/user_data_sources.dart';
import 'package:frontend/infrastructure/user/repositories/user_repository_imp.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'user.dart';
import 'userPreference.dart';

import 'package:http/http.dart' as http;

import 'profileWidget.dart';
import 'editProfilePage.dart';

import 'package:frontend/application/user/user_update/user_update_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../routes/appRouteConstants.dart';

class ProfilePage extends StatefulWidget {
  // const ProfilePage({super.key});
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var user;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    final prefs = await SharedPreferences.getInstance();
    final userData = prefs.getString('userData');

    if (userData != null) {
      setState(() {
        print('setting state');
        print(json.decode(userData));
        user = json.decode(userData);
        print('user data set');
      });
      print('after set state');
      print(json.decode(userData));
    } else {
      print('no user data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => GoRouter.of(context)
                .pushNamed(MyAppRouteConstants.userHomePageRouteName),
          ),
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              imagePath: 'google.jpg',
              onClicked: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => BlocProvider(
                            create: (context) => UserUpdateBloc(
                              UserRepositoryImp(
                                userDataSource: UserDataSource(),
                              ),
                            ),
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
            json.decode(user)['firstName'] +
                ' ' +
                json.decode(user)['lastName'],
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            json.decode(user)['email'],
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
              user.about,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}
