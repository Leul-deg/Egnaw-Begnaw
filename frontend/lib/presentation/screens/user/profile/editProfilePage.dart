import 'dart:convert';
import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'package:frontend/application/user/user_update/user_update_bloc.dart';
import 'package:frontend/application/organizer/organizer_update/organizer_update_bloc.dart';

import 'package:go_router/go_router.dart';
import '../../routes/appRouteConstants.dart';

class EditProfilePage extends StatefulWidget {
  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
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
  Widget build(BuildContext context) =>
      BlocConsumer<UserUpdateBloc, UserUpdateState>(
        listener: (context, state) {
          // Show a snackbar or handle other side effects based on the state
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              leading: BackButton(
                onPressed: () => GoRouter.of(context)
                    .pushNamed(MyAppRouteConstants.profilePageRouteName),
              ),
            ),
            body: Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
              child: Form(
                child: ListView(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    Center(
                      child: GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          radius: MediaQuery.of(context).size.width * 0.1,
                          backgroundImage: AssetImage('google.jpg'),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Organizer name',
                        border: OutlineInputBorder(),
                      ),
                      initialValue: json.decode(user)['firstName'] +
                ' ' +
                json.decode(user)['lastName'],
                      onChanged: (name) {
                        print(name);
                        context.read<OrganizerUpdateBloc>().add(
                            OrganizerUpdateEvent.organizationNameChanged(name));
                      },
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                      initialValue: json.decode(user)['email'],
                      onChanged: (email) {
                        print("on email change");
                        context
                            .read<OrganizerUpdateBloc>()
                            .add(OrganizerUpdateEvent.emailChanged(email));
                      },
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                      initialValue: json.decode(user)['password'],
                      onChanged: (password) {
                        print("on password change");
                        context.read<OrganizerUpdateBloc>().add(
                            OrganizerUpdateEvent.passwordChanged(password));
                      },
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    SizedBox(
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          print('pressed');
                          context.read<OrganizerUpdateBloc>().add(
                              OrganizerUpdateEvent.updateOrganizerPressed());
                        },
                        child: Text('Save'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
}
