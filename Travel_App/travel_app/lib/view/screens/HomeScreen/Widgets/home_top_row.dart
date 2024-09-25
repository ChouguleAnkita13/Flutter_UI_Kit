import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/Widgets/notification.dart';

///WIDGET TO DISPLAY TOP ROW WITH PROFILE IMAGE,NAME AND NOTIFICATION BUTTON

class HomeTopRow extends StatelessWidget {
  const HomeTopRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 5, right: 15, top: 5, bottom: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: const Color.fromRGBO(255, 255, 255, 1)),
            child: Row(
              children: [
                ///USER PROFILE IMAGE
                Image.asset("assets/images/home/home_person.png"),

                ///USER NAME
                Text(
                  "  Leonardo",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(27, 30, 40, 1),
                      fontSize: 14),
                ),
              ],
            ),
          ),

          ///TO DISPLAY NOTIFICATION ICON CALLED NOTIFICATION CUSTOM WIDGET
          const NotificationWidget()
        ],
      ),
    );
  }
}
