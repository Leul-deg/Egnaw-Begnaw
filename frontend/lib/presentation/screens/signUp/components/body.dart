import 'package:flutter/material.dart';
import 'package:frontend/application/auth/user_create/user_create_bloc.dart';
import './signUpWithGoogleBtn.dart';
import 'package:go_router/go_router.dart';
import '../../routes/appRouteConstants.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isLoginPage = false;
  bool isPasswordSeen = true;
  bool isSignup = false;

  void flag() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('User Created Successfully'),
      ),
    );

    isSignup = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('loginBackground.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Sign up',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              BlocConsumer<UserCreateBloc, UserCreateState>(
                listener: (context, state) {
                  // show error snack bar if user creation fails
                  state.authFailureOrSuccessOption.fold(
                    () {},
                    (either) => either.fold(
                      (failure) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              failure.map(
                                invalidInput: (_) => 'Invalid Input',
                                invalidEmail: (value) => 'Invalid Email',
                                invalidPassword: (_) => 'Invalid Password',
                                sessionExpired: (value) => 'Session Expired',
                                serverError: (_) => 'Server Error',
                                emailAlreadyInUse: (_) =>
                                    'Email already in use',
                                invalidEmailAndPasswordCombination: (_) =>
                                    'Invalid email and password combination',
                              ),
                            ),
                          ),
                        );
                      },
                      (_) {
                        // show snack bar if user creation is successful
                        flag();
                        GoRouter.of(context).pushNamed(MyAppRouteConstants.loginRouteName);
                      },
                    ),
                  );
                },
                builder: (context, state) {
                  return Form(
                    child: Column(
                      children: [
                        Visibility(
                          visible: !state.isOrganizer,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            keyboardType: TextInputType.text,
                            key: const ValueKey('firstName'),
                            onChanged: (value) {
                              // use this to save the value to a variable or database
                              print(value);
                              // trigger the firstName bloc event
                              context
                                  .read<UserCreateBloc>()
                                  .add(UserCreateEvent.firstNameChanged(value));
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: const BorderSide(),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide:
                                    const BorderSide(color: Colors.white60),
                              ),
                              labelText: "Enter First Name",
                              labelStyle: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Visibility(
                          visible: !state.isOrganizer,
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            keyboardType: TextInputType.text,
                            key: const ValueKey('Last Name'),
                            onChanged: (value) {
                              // use this to save the value to a variable or database
                              print(value);
                              // trigger the lastName bloc event
                              context
                                  .read<UserCreateBloc>()
                                  .add(UserCreateEvent.lastNameChanged(value));
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: const BorderSide(),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide:
                                    const BorderSide(color: Colors.white60),
                              ),
                              labelText: "Enter Last Name",
                              labelStyle: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Visibility(
                          visible: state.isOrganizer,
                          child: TextFormField(
                            // hide if user is not an organizer
                            style: const TextStyle(color: Colors.white),
                            keyboardType: TextInputType.text,
                            key: const ValueKey('Organizer\'s Name'),
                            onChanged: (value) {
                              print(value);
                              // trigger the organizationName bloc event
                              context.read<UserCreateBloc>().add(
                                  UserCreateEvent.organizationNameChanged(
                                      value));
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: const BorderSide(),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide:
                                    const BorderSide(color: Colors.white60),
                              ),
                              labelText: "Orgranizer's Name",
                              labelStyle: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          style: const TextStyle(color: Colors.white),
                          keyboardType: TextInputType.emailAddress,
                          key: const ValueKey('email'),
                          onChanged: (value) {
                            // trigger the email changed bloc event
                            context.read<UserCreateBloc>().add(
                                UserCreateEvent.emailAddressChanged(value));
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide:
                                  const BorderSide(color: Colors.white60),
                            ),
                            labelText: "Enter Email",
                            labelStyle: const TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          onChanged: (value) {
                            context
                                .read<UserCreateBloc>()
                                .add(UserCreateEvent.passwordChanged(value));
                          },
                          style: const TextStyle(color: Colors.white),
                          obscureText: isPasswordSeen,
                          keyboardType: TextInputType.text,
                          key: const ValueKey('password'),
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isPasswordSeen = !isPasswordSeen;
                                });
                              },
                              icon: isPasswordSeen
                                  ? const Icon(
                                      Icons.visibility_off,
                                      size: 20,
                                    )
                                  : const Icon(
                                      Icons.visibility,
                                      size: 20,
                                    ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide:
                                  const BorderSide(color: Colors.white60),
                            ),
                            labelText: "Enter Password",
                            labelStyle: const TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 20),
                        ListTile(
                          title: const Text(
                            'Organizer',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          leading: Checkbox(
                              value: state.isOrganizer,
                              onChanged: (value) {
                                context.read<UserCreateBloc>().add(
                                    UserCreateEvent.isOrganizerChanged(true));
                              }),
                        ),
                        ListTile(
                          title: const Text(
                            'User',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          leading: Checkbox(
                            value: !state.isOrganizer,
                            onChanged: (value) {
                              context.read<UserCreateBloc>().add(
                                  UserCreateEvent.isOrganizerChanged(false));
                            },
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          width: double.infinity,
                          child: ElevatedButton(
                            
                            onPressed: () {
                              context.read<UserCreateBloc>().add(
                                    UserCreateEvent.createUserPressed(),
                                    );

                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(15),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 2,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'OpanSans',
                                ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            const Text(
                              '- OR -',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                            // const SizedBox(height: 10),
                            const SignUpWithGoogleBtn(),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Already have an account?',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                TextButton(
                                    onPressed: () {
                                      GoRouter.of(context).pushNamed(
                                          MyAppRouteConstants.loginRouteName);
                                    },
                                    child: const Text(
                                      'Log in',
                                      style: TextStyle(fontSize: 18),
                                    ))
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ));
  }
}
