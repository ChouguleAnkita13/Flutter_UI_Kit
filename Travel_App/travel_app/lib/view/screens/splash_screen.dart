import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/screens/onboard_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () =>Get.off(const OnboardScreen()));
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        color: const Color.fromRGBO(13, 110, 253, 1),
        child: Text("Travenor",style: GoogleFonts.aclonica(
          fontSize:34,fontWeight: FontWeight.w400,color: const Color.fromRGBO(255, 255, 255, 1),
        ),),
        ),
    );}
}