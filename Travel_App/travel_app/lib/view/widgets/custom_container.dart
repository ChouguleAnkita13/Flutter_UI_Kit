import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: Get.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(13, 110, 253, 1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        title,
        style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: const Color.fromRGBO(255, 255, 255, 1),
            fontSize: 16),
      ),
    );
  }
}
