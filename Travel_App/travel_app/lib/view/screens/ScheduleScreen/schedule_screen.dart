import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/Widgets/notification.dart';
import 'package:travel_app/view/screens/ScheduleScreen/Widgets/custom_calender.dart';
import 'package:travel_app/view/screens/ScheduleScreen/Widgets/myschedule.dart';

///WIDGET TO DISPLAY SCHEDULEDSCREEN WHICH SHOWS SCHEDULED DESTINATIONS
class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                Text(
                  "Schedule",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(27, 30, 40, 1),
                      fontSize: 18),
                ),

                ///TO DISPLAY NOTIFICATION ICON CALLED NOTIFICATION CUSTOM WIDGET
                const NotificationWidget()
              ],
            ),
            const SizedBox(height: 20),

            ///CALENDER
            const CustomCalender(),
            const SizedBox(height: 20),

            ///TO DISPLAY ALL PLACES CALLED SEARCH PLACE CUSTOM WIDGET
            const Expanded(child: Myschedule())
          ],
        ),
      ),
    );
  }
}
