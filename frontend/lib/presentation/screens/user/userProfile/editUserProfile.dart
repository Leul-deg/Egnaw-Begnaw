import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/user/user_update/user_update_bloc.dart';
import 'package:frontend/infrastructure/user/data_sources/user_data_sources.dart';
import 'package:frontend/infrastructure/user/repositories/user_repository_imp.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../routes/appRouteConstants.dart';

class EditUserProfile extends StatefulWidget {
  @override
  _EditUserProfileState createState() => _EditUserProfileState();
}

class _EditUserProfileState extends State<EditUserProfile> {
  bool _passwordVisible = false;
  var userData;

  @override
  void initState() {
    super.initState();

    getOrganizer();
  }

  getOrganizer() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      userData = json.decode(prefs.getString('userData')!);
      print('here is userdata up there');
      print(userData);
    });
  }


  @override
  Widget build(BuildContext context) {
    var userData = this.userData;
    return BlocProvider(
      create: (context) =>
          UserUpdateBloc(UserRepositoryImp(userDataSource: UserDataSource())),
      child: BlocConsumer<UserUpdateBloc, UserUpdateState>(
        listener: (context, state) {
          // show snack bar based on updateFailureOrSuccessOption
          state.updateFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (failure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      failure.map(
                        insufficientPermission: () => 'Insufficient Permission',
                        invalidUser: () => 'Invalid User',
                        serverError: () => 'Server Error',
                        unableToDelete: () => 'Unable to Delete',
                        unableToUpdate: () => 'Unable to Update',
                        unexpectedError: () => 'Unexpected Error',
                      ),
                    ),
                  ),
                );
              },
              (_) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Profile Updated'),
                  ),
                );
                GoRouter.of(context)
                    .pushNamed(MyAppRouteConstants.userProfilePageRouteName);
              },
            ),
          );
        },
        builder: (context, state) {
          print('here is the userdata to be edited');
          print(userData);
          return Scaffold(
            appBar: AppBar(
              title: Text('Edit Profile'),
              backgroundColor: Colors.blue,
              leading: BackButton(
                onPressed: () => GoRouter.of(context)
                    .pushNamed(MyAppRouteConstants.userProfilePageRouteName),
              ),
            ),
            resizeToAvoidBottomInset: true,
            body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: 15), // Add padding to the top
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight, // Align at bottom-right
                      children: [
                        CircleAvatar(
                          radius: 70,
                        ),
                        Positioned(
                          bottom: 2, // Adjust the value as needed
                          right: 3, // Adjust the value as needed
                          child: Padding(
                            padding: EdgeInsets.all(
                                4), // Add padding to the IconButton
                            child: CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 23,
                              child: IconButton(
                                iconSize: 20,
                                icon: Icon(Icons.camera_alt),
                                onPressed: () {
                                  // Handle camera button press
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                            initialValue:
                                json.decode(userData ?? '{}')['firstName'],
                            onChanged: (value) {
                              context.read<UserUpdateBloc>().add(
                                    UserUpdateEvent.firstNameChanged(value),
                                  );
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: 'First Name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            initialValue:
                                json.decode(userData ?? '{}')['lastName'],
                            onChanged: (value) {
                              context.read<UserUpdateBloc>().add(
                                    UserUpdateEvent.lastNameChanged(value),
                                  );
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: 'Last Name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            initialValue:
                                json.decode(userData ?? '{}')['email'],
                            onChanged: (value) {
                              context.read<UserUpdateBloc>().add(
                                    UserUpdateEvent.emailChanged(value),
                                  );
                            },
                            decoration: InputDecoration(
                              labelText: 'Email',
                              prefixIcon: Icon(Icons.email),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            onChanged: (value) {
                              context.read<UserUpdateBloc>().add(
                                    UserUpdateEvent.passwordChanged(value),
                                  );
                            },
                            obscureText: !_passwordVisible,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: IconButton(
                                icon: Icon(_passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                context.read<UserUpdateBloc>().add(
                                      UserUpdateEvent.updateUserPressed(),
                                    );
                              },
                              child: Text(
                                'Save',
                                style: TextStyle(fontSize: 20),
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 18),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
