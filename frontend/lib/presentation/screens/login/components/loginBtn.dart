import 'package:flutter/material.dart';
class LoginBtn extends StatelessWidget {
  const LoginBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {},
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
    );
  }
}