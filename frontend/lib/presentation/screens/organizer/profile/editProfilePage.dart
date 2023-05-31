// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:frontend/application/user/user_update/user_update_bloc.dart';
import 'package:frontend/application/organizer/organizer_update/organizer_update_bloc.dart';

import 'profileWidget.dart';
import 'textFieldWidget.dart';

import 'userPreference.dart';

import 'appbarWidget.dart';

import 'user.dart';

class EditProfilePage extends StatefulWidget {
  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  bool _obscureText = true;

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
          return Scaffold(
          // //  appBar: AppBar(
          // //   elevation: 0,
          // //   backgroundColor: Colors.white,
          //     // leading: IconButton(
          //     //   icon: Icon(Icons.arrow_back),
          //     //   color: Colors.black,
          //     //   onPressed: () {
          //     //     Navigator.pop(context);
          //     //   },
          //     ),
          //   ),
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProfileWidget(
                        imagePath: user.imagePath,
                        isEdit: true,
                        onClicked: () {}),
                    SizedBox(height: 20),
                    // TextFormField(
                    //   decoration: InputDecoration(labelText: 'Organizer name'),
                    //   initialValue: user.name,
                    //   onChanged: (name) {
                    //     print(name);
                    //     context.read<OrganizerUpdateBloc>().add(
                    //         OrganizerUpdateEvent.organizationNameChanged(name));
                    //   },
                    // ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Organizer name',
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.blue, width: 2),
                        ),
                        prefixIcon: Icon(Icons.person),
                      ),
                      initialValue: user.name,
                      onChanged: (name) {
                        print(name);
                        context.read<OrganizerUpdateBloc>().add(
                            OrganizerUpdateEvent.organizationNameChanged(name));
                      },
                    ),
                    SizedBox(height: 20),
                    // TextFormField(
                    //   decoration: InputDecoration(labelText: 'Email'),
                    //   initialValue: user.email,
                    //   onChanged: (email) {
                    //     print("on email change");
                    //     context
                    //         .read<OrganizerUpdateBloc>()
                    //         .add(OrganizerUpdateEvent.emailChanged(email));
                    //   },
                    // ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.blue, width: 2),
                        ),
                        prefixIcon: Icon(Icons.email),
                      ),
                      initialValue: user.email,
                      onChanged: (email) {
                        print("on email change");
                        context
                            .read<OrganizerUpdateBloc>()
                            .add(OrganizerUpdateEvent.emailChanged(email));
                      },
                    ),
                    SizedBox(height: 20),
                    // TextFormField(
                    //   decoration: InputDecoration(labelText: 'Password'),
                    //   initialValue: user.password,
                    //   onChanged: (password) {
                    //     print("on password change");
                    //     context.read<OrganizerUpdateBloc>().add(
                    //         OrganizerUpdateEvent.passwordChanged(password));
                    //   },
                    // ),

                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        filled: true,
                        fillColor: Colors.grey[200]!,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.blue, width: 2),
                        ),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                      ),
                      initialValue: user.password,
                      onChanged: (password) {
                        print("on password change");
                        context.read<OrganizerUpdateBloc>().add(
                            OrganizerUpdateEvent.passwordChanged(password));
                      },
                      obscureText: _obscureText,
                    ),

                    SizedBox(height: 20),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     print('pressed');
                    //     context
                    //         .read<OrganizerUpdateBloc>()
                    //         .add(OrganizerUpdateEvent.updateOrganizerPressed());
                    //   },
                    //   child: Text('Save'),
                    // ),
                    ElevatedButton(
                      onPressed: () {
                        print('pressed');
                        context
                            .read<OrganizerUpdateBloc>()
                            .add(OrganizerUpdateEvent.updateOrganizerPressed());
                      },
                      child: Text(
                        'Save',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.yellow,
                        minimumSize: Size(500, 40),
                        shape: StadiumBorder(),
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
