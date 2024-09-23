import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/screens/HomeScreen/Widgets/best_destination.dart';
import 'package:travel_app/view/Widgets/notification.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 16, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: Get.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                          left: 5, right: 15, top: 5, bottom: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: const Color.fromRGBO(255, 255, 255, 1)),
                      child: Row(
                        children: [
                          Image.asset("assets/images/home/home_person.png"),
                          const SizedBox(width: 3),
                          Text(
                            "Leonardo",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(27, 30, 40, 1),
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    //To display notification icon called Notification custom widget
                    const NotificationWidget()
                  ],
                ),
              ),
//Explore the beatiful world
              const SizedBox(height: 20),
              SizedBox(
                width: Get.width / 1.3,
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
//Best Destination
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best Destination",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(27, 30, 40, 1),
                        fontSize: 20),
                  ),
                  Text(
                    "View all",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(13, 110, 253, 1),
                        fontSize: 16),
                  ),
                ],
              ),
              BestDestination()
            ],
          ),
        ),
      ),
    );
  }
}
