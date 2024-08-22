import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/widgets/notification.dart';
import 'package:travel_app/view/widgets/schedule/custom_calender.dart';
import 'package:travel_app/view/widgets/schedule/myschedule.dart';

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
                const Text(""),
                Text(
                  "Schedule",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(27, 30, 40, 1),
                      fontSize: 18),
                ),
                //To display notification icon called Notification custom widget
                const NotificationWidget()
              ],
            ),
            const SizedBox(height: 20),
            //Calender
            const CustomCalender(),
            const SizedBox(height: 20),
            //MySchedule
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Schedule",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
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
            
            //To display all places called Search Place custom widget
            const SizedBox(height: 20),
            Expanded(child: Myschedule())
          ],
        ),
      ),
    );
  }
}
