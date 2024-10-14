import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

///WIDGET TO DISPLAY SIGN TEXT AND CONTENT FOR LOGIN AND SIGNUP SCREEN
class SignText extends StatelessWidget {
  const SignText({super.key, required this.title, required this.content});
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height / 9.99,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ///TITLE
          Text(
            title,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(27, 30, 40, 1),
                fontSize: 26),
          ),

          ///CONTENT
          Text(
            content,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(125, 132, 141, 1),
                fontSize: 15),
          ),
        ],
      ),
    );
  }
}
