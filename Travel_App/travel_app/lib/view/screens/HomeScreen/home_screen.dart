import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/screens/HomeScreen/Widgets/best_destination.dart';
import 'package:travel_app/view/screens/HomeScreen/Widgets/home_top_row.dart';

///WIDGET TO DISPLAY HOME SCREEN
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 16, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///TOP ROW WITH USER PROFILE IMAGE,NAME AND NOTIFICATION BUTTON
              const HomeTopRow(),

              const SizedBox(height: 20),

              ///EXPLORE THE BEATIFUL WORLD TEXT
              SizedBox(
                width: Get.width / 1.3,

                ///TEXTSPAN
                child: Text.rich(
                  TextSpan(children: [
                    TextSpan(
                      text: "Explore the",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(27, 30, 40, 1),
                          fontSize: 38),
                    ),
                    TextSpan(
                      text: " Beautiful",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(27, 30, 40, 1),
                          fontSize: 38),
                    ),
                    TextSpan(
                      text: " world!",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 112, 41, 1),
                          fontSize: 38),
                    )
                  ]),
                ),
              ),

              const SizedBox(height: 40),

              ///
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///BEST DESTINATION TEXT
                  Text(
                    "Best Destination",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(27, 30, 40, 1),
                        fontSize: 20),
                  ),

                  ///VIEW ALL DESTINATION BUTTON
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "View all",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(13, 110, 253, 1),
                          fontSize: 16),
                    ),
                  ),
                ],
              ),

              ///[BestDestination()] WIDGET
              const BestDestination()
            ],
          ),
        ),
      ),
    );
  }
}
