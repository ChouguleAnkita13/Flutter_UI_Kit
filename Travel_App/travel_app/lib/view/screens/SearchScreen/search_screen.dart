import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/screens/SearchScreen/Widgets/search_places.dart';
import 'package:travel_app/view/screens/SearchScreen/Widgets/search_textField.dart';

///WIDGET TO SHOW SEARCH SCREEN
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(""),
                    Text(
                      "Search",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(27, 30, 40, 1),
                          fontSize: 18),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Text(
                        "Cancel",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(13, 110, 253, 1),
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                ///TEXTFIELD FOR SEARCH
                const SearchTextfield(),
                const SizedBox(height: 20),
                Text(
                  "Search Places ",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(27, 30, 40, 1),
                      fontSize: 20),
                ),

                const SizedBox(height: 20),

                ///TO DISPLAY ALL PLACES CALLED SEARCH PLACE CUSTOM WIDGET
                const Expanded(child: SearchPlaces())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
