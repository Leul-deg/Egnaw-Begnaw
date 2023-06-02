import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../routes/appRouteConstants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/application/auth/login/login_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isLoginPage = false;
  bool isPasswordSeen = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        // show snack bar if login fails
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    failure.map(
                      invalidInput: (_) => 'Invalid Input',
                      invalidPassword: (_) => 'Invalid Password',
                      invalidEmail: (_) => 'Invalid Email',
                      sessionExpired: (_) => 'Session Expired',
                      serverError: (_) => 'Server Error',
                      emailAlreadyInUse: (_) => 'Email already in use',
                      invalidEmailAndPasswordCombination: (_) =>
                          'Invalid email and password combination',
                    ),
                  ),
                ),
              );
            },
            (_) {
              // show snack bar if login succeeds
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Login Success'),
                ),
              );
              if (state.isOrganizer) {
                GoRouter.of(context)
                    .pushNamed(MyAppRouteConstants.organizerScreenRouteName);
              } else {
                GoRouter.of(context)
                    .pushNamed(MyAppRouteConstants.userScreenRouteName);
              }
            },
          ),
        );
      },
      builder: (context, state) {
        return SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/loginBackground.jpg'),
                  fit: BoxFit.cover,
                )
              ),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Sign In',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 35),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          onChanged: (value) {
                            context.read<LoginBloc>().add(
                                  LoginEvent.emailChanged(value),
                                );
                          },
                          style: const TextStyle(color: Colors.white),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: const BorderSide()),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide:
                                    const BorderSide(color: Colors.white60),
                              ),
                              labelText: "Enter Email",
                              labelStyle: const TextStyle(color: Colors.white)),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          style: const TextStyle(color: Colors.white),
                          onChanged: (value) {
                            context.read<LoginBloc>().add(
                                  LoginEvent.passwordChanged(value),
                                );
                          },
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
                                borderSide: const BorderSide()),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide:
                                  const BorderSide(color: Colors.white60),
                            ),
                            labelText: "Enter Password",
                            labelStyle: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
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
                                context.read<LoginBloc>().add(
                                      LoginEvent.isOrganizerChanged(true),
                                    );
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
                              context.read<LoginBloc>().add(
                                    LoginEvent.isOrganizerChanged(false),
                                  );
                            },
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {
                                context.read<LoginBloc>().add(
                                      LoginEvent.loginPressed(),
                                    );
                              },
                              style: ElevatedButton.styleFrom(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  )),
                              child: const Padding(
                                padding: EdgeInsets.all(15),
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.white,
                                      letterSpacing: 2,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'OpanSans'),
                                ),
                              )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Don\'t have an account?',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            TextButton(
                                onPressed: () {
                                  GoRouter.of(context).pushNamed(
                                      MyAppRouteConstants.signupRouteName);
                                },
                                child: const Text(
                                  'Sign Up',
                                  style: TextStyle(fontSize: 18),
                                ))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )),
        );
      },
    );
  }
}
