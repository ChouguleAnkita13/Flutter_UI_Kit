import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///WIDGET TO DISPLAY NAME TEXTFIELD
class NameTextfield extends StatelessWidget {
  const NameTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: const Color.fromRGBO(27, 30, 40, 1),
      style: GoogleFonts.poppins(
          fontWeight: FontWeight.w400,
          color: const Color.fromRGBO(27, 30, 40, 1),
          fontSize: 16),
      decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromRGBO(247, 247, 249, 1),
          hintText: "Enter your name",
          hintStyle: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(125, 132, 141, 1),
              fontSize: 16),
          border: InputBorder.none),
    );
  }
}
