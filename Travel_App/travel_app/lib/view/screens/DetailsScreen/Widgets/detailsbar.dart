import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

///WIDGET TO DISPLAY TOP ROW CONTAINING
///BACK BUTTON,DETAILS TEXT AND BOOKMARKED ICON
///FOR DEATILSSCREEN
class Detailsbar extends StatelessWidget {
  const Detailsbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ///BACK BUTTON
        GestureDetector(
          onTap: () => Get.back(),
          child: CircleAvatar(
            backgroundColor:
                const Color.fromRGBO(27, 30, 40, 1).withOpacity(0.16),
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Color.fromRGBO(255, 255, 255, 1),
              size: 15,
            ),
          ),
        ),

        ///DETAILS TEXT
        Text(
          "Details",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              color: const Color.fromRGBO(255, 255, 255, 1),
              fontSize: 18),
        ),

        ///BOOKMARKED BUTTON
        GestureDetector(
          child: CircleAvatar(
            backgroundColor:
                const Color.fromRGBO(27, 30, 40, 1).withOpacity(0.16),
            child: const Icon(
              Icons.bookmark_outline,
              color: Color.fromRGBO(255, 255, 255, 1),
              size: 18,
            ),
          ),
        ),
      ],
    );
  }
}
