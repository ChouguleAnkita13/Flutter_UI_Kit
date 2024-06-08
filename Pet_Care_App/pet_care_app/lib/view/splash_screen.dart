import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to the login screen
      Navigator.of(context).pushReplacementNamed("/login");
    });

    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
      body: Center(
        child: Image.asset(
          "assets/images/splash.png",
        ),
      ),
    );
  }
}
