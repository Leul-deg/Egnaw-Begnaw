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

class EditProfilePage extends StatelessWidget {
  User user = UserPreferences.myUser;

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
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Organizer name'),
                      initialValue: user.name,
                      onChanged: (name) {
                        print(name);
                        context.read<OrganizerUpdateBloc>().add(
                            OrganizerUpdateEvent.organizationNameChanged(name));
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Email'),
                      initialValue: user.email,
                      onChanged: (email) {
                        print("on email change");
                        context
                            .read<OrganizerUpdateBloc>()
                            .add(OrganizerUpdateEvent.emailChanged(email));
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Password'),
                      initialValue: user.password,
                      onChanged: (password) {
                        print("on password change");
                        context.read<OrganizerUpdateBloc>().add(
                            OrganizerUpdateEvent.passwordChanged(password));
                      },
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        print('pressed');
                        context
                            .read<OrganizerUpdateBloc>()
                            .add(OrganizerUpdateEvent.updateOrganizerPressed());
                      },
                      child: Text('Save'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
}
