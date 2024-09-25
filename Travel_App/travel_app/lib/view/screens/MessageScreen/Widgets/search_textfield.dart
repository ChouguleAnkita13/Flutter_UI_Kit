import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///WIDGET TO DISPLAY SEARCH TEXTFIELD
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

        ///PREFIX ICON
        prefixIcon: Image.asset(
          "assets/icons/search.png",
          height: 24,
          width: 24,
          color: const Color.fromRGBO(125, 132, 141, 1),
        ),
        hintStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            color: const Color.fromRGBO(125, 132, 141, 1),
            fontSize: 16),

        ///HINTTEXT
        hintText: 'Search for chats & messages',
      ),
    );
  }
}
