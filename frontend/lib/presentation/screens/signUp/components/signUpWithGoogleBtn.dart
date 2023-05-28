import 'package:flutter/material.dart';

class SignUpWithGoogleBtn extends StatefulWidget {
  const SignUpWithGoogleBtn({super.key});

  @override
  State<SignUpWithGoogleBtn> createState() => _SignUpWithGoogleBtnState();
}

class _SignUpWithGoogleBtnState extends State<SignUpWithGoogleBtn> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 25),
        width: 270,
        height: 105,
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 2),
                              blurRadius: 6)
                        ],
                        image:
                            DecorationImage(image: AssetImage('google.jpg'))),
                  ),
                  Text(
                    'Sign Up with Google',
                    style: TextStyle(color: Colors.blue[300], fontSize: 18),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
