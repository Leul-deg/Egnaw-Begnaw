import 'package:flutter/material.dart';

import './loginBtn.dart';
import './loginWithGoogleBtn.dart';
import 'package:go_router/go_router.dart';
import '../../routes/appRouteConstants.dart';

// import 'package:google_fonts/google_fonts.dart';

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
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('loginBackground.jpg'),
              fit: BoxFit.cover,
            ),
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
              const SizedBox(height: 20),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      style: const TextStyle(color: Colors.white),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide()),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: const BorderSide(color: Colors.white60),
                          ),
                          labelText: "Enter Email",
                          labelStyle: const TextStyle(color: Colors.white)),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      style: const TextStyle(color: Colors.white),

                      obscureText: isPasswordSeen,
                      keyboardType: TextInputType.text,
                      key: const ValueKey('password'),

                      // onSaved: (value) {
                      //   _password = value!;
                      // },
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
                          borderSide: const BorderSide(color: Colors.white60),
                        ),
                        labelText: "Enter Password",
                        labelStyle: const TextStyle(color: Colors.white),
                        // GoogleFonts.roboto(),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const LoginBtn(),
                    Column(
                      children: [
                        const Text(
                          '- OR -',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                        const LoginWithGoogleBtn(),
                        const SizedBox(height: 10),
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
                                  GoRouter.of(context)
                        .pushNamed(MyAppRouteConstants.signupRouteName);
                                },
                                child: const Text(
                                  'Sign Up',
                                  style: TextStyle(fontSize: 18),
                                ))
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
