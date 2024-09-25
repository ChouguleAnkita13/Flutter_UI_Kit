import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///WIDGETS TO SHOW PROFILE DETAILS
class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 96,
          width: 96,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 234, 223, 1),
              borderRadius: BorderRadius.circular(100)),
          child: Image.asset(
            "assets/images/home/home_person.png",
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Leonardo",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              color: const Color.fromRGBO(27, 30, 40, 1),
              fontSize: 24),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Leonardo@gmail.com",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(125, 132, 141, 1),
              fontSize: 14),
        ),
      ],
    );
  }
}
