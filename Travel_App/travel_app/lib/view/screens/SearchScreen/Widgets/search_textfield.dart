import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        fillColor: const Color.fromRGBO(255, 255, 255, 1),
        filled: true,
        prefixIcon: Image.asset(
          "assets/icons/search.png",
          height: 24,
          width: 24,
          color: const Color.fromRGBO(125, 132, 141, 1),
        ),
        suffixIcon: Image.asset(
          "assets/icons/mike.png",
          height: 24,
          width: 24,
          color: const Color.fromRGBO(125, 132, 141, 1),
        ),
        hintStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            color: const Color.fromRGBO(125, 132, 141, 1),
            fontSize: 16),
        hintText: 'Search',
      ),
    );
  }
}
