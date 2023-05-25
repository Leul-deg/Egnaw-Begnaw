import 'package:flutter/material.dart';

class SignUpBtn extends StatelessWidget {
  const SignUpBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          final form = Form.of(context);
          if (form.validate()) {
            form.save();
            // do something with the email value
          }
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
    );
  }
}