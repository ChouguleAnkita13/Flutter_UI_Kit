import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///WIDGET TO DISPLAY OR CONNECT I.E LOGIN AND SIGNUP WITH FACEBOOK TWITTER AND INSTAGRAM
class OrConnect extends StatelessWidget {
  const OrConnect({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///TEXT
        Text(
          "Or connect",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(112, 123, 129, 1),
              fontSize: 14),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ///FACEBOOK
            GestureDetector(
                onTap: () {}, child: Image.asset("assets/images/facebook.png")),

            ///INSTAGRAM
            GestureDetector(
                onTap: () {}, child: Image.asset("assets/images/insta.png")),

            ///TWITTER
            GestureDetector(
                onTap: () {}, child: Image.asset("assets/images/twitter.png")),
          ],
        ),
      ],
    );
  }
}
