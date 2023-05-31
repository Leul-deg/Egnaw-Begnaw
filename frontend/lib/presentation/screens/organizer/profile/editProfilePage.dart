
import 'dart:convert';
import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:frontend/application/auth/user_data/user_data_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:frontend/application/user/user_update/user_update_bloc.dart';
import 'package:frontend/application/organizer/organizer_update/organizer_update_bloc.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'profileWidget.dart';
import 'textFieldWidget.dart';
import 'userPreference.dart';
import 'appbarWidget.dart';
import 'user.dart';
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
      BlocConsumer<OrganizerUpdateBloc, OrganizerUpdateState>(
        listener: (context, state) {
          // Show a snackbar based on the state.updatefailureOrSuccess
          state.updateFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (failure) {
                final snackBar = SnackBar(
                  content: Text(
                    failure.map(
                      insufficientPermission: () => 'Insufficient permissions',
                      unableToUpdate: () => 'Unable to update',
                      unexpectedError: () => 'Unexpected error',
                      invalidOrganizer: () => 'Invalid organizer',
                      serverError: () => 'Server error',
                      unableToDelete: () => 'Unable to delete',
                    ),
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              (_) {
                final snackBar = SnackBar(
                  content: Text('Update successful'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
          );
        },
        builder: (context, state) {
          // context.read<UserDataBloc>().add(UserDataEvent.getUserData());

          print('here is the user in the builder');
          print(user);

          if(state.email == null){
          context.read<OrganizerUpdateBloc>().add(
              OrganizerUpdateEvent.emailChanged(
                  json.decode(user)['email'].toString()));
            
          }

          if (state.password == null){
          context.read<OrganizerUpdateBloc>().add(
              OrganizerUpdateEvent.passwordChanged(
                  json.decode(user)['password'].toString()));
          }

          if (state.organizationName == null){
          context.read<OrganizerUpdateBloc>().add(
              OrganizerUpdateEvent.organizationNameChanged(
                  json.decode(user)['firstName'].toString()));
          }

          return Scaffold(
            
            body: Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
              child: Form(
                child: ListView(
                  children: [

                    ProfileWidget(
                        imagePath: "user['imagePath']",
                        isEdit: true,
                        onClicked: () {}
                    ),
                    SizedBox(height: 20),

                    TextFormField(

                      decoration: InputDecoration(
                        labelText: 'Organizer name',
                        border: OutlineInputBorder(),
                      ),
                      initialValue: json.decode(user)['firstName'].toString(),

                      onChanged: (name) {
                        print(name);
                        context.read<OrganizerUpdateBloc>().add(
                            OrganizerUpdateEvent.organizationNameChanged(
                                name));
                      },
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    TextFormField(

                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                      initialValue: json.decode(user)['email'].toString(),

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
                      initialValue: json.decode(user)['password'].toString(),

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
                        GoRouter.of(context).pushNamed(MyAppRouteConstants.organizerScreenRouteName);
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