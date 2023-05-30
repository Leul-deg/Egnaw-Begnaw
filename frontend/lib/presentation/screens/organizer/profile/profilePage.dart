import 'package:flutter/material.dart';
import 'package:frontend/domain/organizer/organizer.dart';
import 'package:frontend/infrastructure/organizer/data_sources/organizer_data_sources.dart';
import 'package:frontend/infrastructure/organizer/repositories/organizer_repository_imp.dart';
import 'user.dart';
import 'userPreference.dart';
import 'appbarWidget.dart';

import 'profileWidget.dart';
import 'editProfilePage.dart';

import 'package:frontend/application/organizer/organizer_update/organizer_update_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatefulWidget {
  // const ProfilePage({super.key});
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Builder(
      builder: (context) => Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              imagePath: user.imagePath,
              onClicked: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => BlocProvider(
                            create: (context) => OrganizerUpdateBloc(
                              OrganizerRepositoryImp(
                                organizerDataSource: OrganizerDataSource()
                              )
                            ),
                            child: EditProfilePage(),
                          )),
                );
              },
            ),
            const SizedBox(height: 24),
            buildName(user),
            const SizedBox(height: 48),
            buildAbout(user),
          ],
        ),
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );

  //

  Widget buildAbout(User user) => Container(
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
