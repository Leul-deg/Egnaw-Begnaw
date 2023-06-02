import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../routes/appRouteConstants.dart';

class RoundButton extends StatelessWidget {
  RoundButton({
    Key? key,
    required this.size,
    required this.text,
  }) : super(key: key);

  final Size size;
  final String text;
  final kPrimaryColor = Color(0xFF6F35A5);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: ElevatedButton(
          onPressed: () {
            if (text == 'Login') {
              GoRouter.of(context)
                  .pushNamed(MyAppRouteConstants.loginRouteName);
            } else {
              GoRouter.of(context)
                  .pushNamed(MyAppRouteConstants.signupRouteName);
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryColor,
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 32.0,
            ),
          ),
          child: Text(
            text.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
