import 'package:flutter/material.dart';
import './roundedBtn.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background5.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          const Expanded(
            child: Center(
              child: Text(
                'Event Ticketing App',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundButton(
                  size: size,
                  text: "Login",
                ),
                const SizedBox(height: 10),
                RoundButton(
                  size: size,
                  text: "Sign Up",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
