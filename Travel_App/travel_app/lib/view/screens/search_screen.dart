import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/widgets/search_places.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      onTap: (){
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
                //Textfield for search
                TextField(
                  textAlign: TextAlign.start,
                  controller: _textController,
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
                ),
                const SizedBox(height: 20),
                Text(
                  "Search Places ",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(27, 30, 40, 1),
                      fontSize: 20),
                ),
                //To display all places called Search Place custom widget
                const SizedBox(height: 20),
                Expanded(child: SearchPlaces())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
