import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

///WIDGET TO DISPLAY SPLASHSCREEN
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///FUTURE DELAYED IS USED WITH DURATION FOR THE PURPOSE OF
    ///AFTER 2 SECONDS NAVIGATE TO ONBOARDSCREEN
    Future.delayed(const Duration(seconds: 2), () => Get.offNamed("/onboard"));
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        color: const Color.fromRGBO(13, 110, 253, 1),
        child: Text(
          "Travenor",
          style: GoogleFonts.aclonica(
            fontSize: 34,
            fontWeight: FontWeight.w400,
            color: const Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
      ),
    );
  }
}
