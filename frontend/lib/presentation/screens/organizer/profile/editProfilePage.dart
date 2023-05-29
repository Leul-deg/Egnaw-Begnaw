
import 'package:flutter/material.dart';

import 'profileWidget.dart';
import 'textFieldWidget.dart';

import 'userPreference.dart';

import 'appbarWidget.dart';

import 'user.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => Builder(
        builder: (context) => Scaffold(
          body: LayoutBuilder(
            builder: (context, constraints) => OrientationBuilder(
              builder: (context, orientation) {
                final isPortrait = orientation == Orientation.portrait;
                final double spacing = isPortrait ? 20.0 : 40.0;
                final double imageSize = isPortrait
                    ? constraints.maxWidth * 0.4
                    : constraints.maxHeight * 0.4;

                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    physics: BouncingScrollPhysics(),
                    children: [
                      ProfileWidget(
                        imagePath: user.imagePath,
                        isEdit: true,
                        onClicked: () async {},
                      ),
                      SizedBox(height: spacing),
                      TextFieldWidget(
                        label: 'Full Name',
                        text: user.name,
                        onChanged: (name) {},
                      ),
                      SizedBox(height: spacing),
                      TextFieldWidget(
                        label: 'Email',
                        text: user.email,
                        onChanged: (email) {},
                      ),
                      SizedBox(height: spacing),
                      TextFieldWidget(
                        label: 'About',
                        text: user.about,
                        maxLines: 5,
                        onChanged: (about) {},
                      ),
                      SizedBox(height: spacing),
                      TextButton(
                        onPressed: () {
                          // TODO: Implement save logic here
                        },
                        child: Text('Save'),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.yellow),
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      );
}
