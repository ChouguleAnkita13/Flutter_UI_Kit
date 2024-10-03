import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';
import 'package:travel_app/controller/calender_controller.dart';

/// WIDGET TO DISPLAY CUSTOM CALENDAR WEEK VIEW
class CustomCalender extends StatelessWidget {
  const CustomCalender({super.key});

  @override
  Widget build(BuildContext context) {
    // INITIALIZE THE CALENDAR CONTROLLER
    final CalendarController calendarController = Get.put(CalendarController());

    return Container(
        padding: const EdgeInsets.all(16),
        width: Get.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: const Color.fromRGBO(255, 255, 255, 1),
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(180, 188, 201, 0.16),
                offset: Offset(0, 6),
                blurRadius: 20)
          ],
        ),
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // OBSERVE CHANGES TO FORMATTED MONTH-YEAR
              Text(
                calendarController.formattedMonthYear.value,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(27, 30, 40, 1),
                    fontSize: 20),
              ),
              const SizedBox(height: 10.0),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const ClampingScrollPhysics(),
                  child:
                      // GENERATE DAYS FOR THE CURRENT WEEK
                      Row(
                    children: List.generate(
                      calendarController.currentWeek.length,
                      (index) {
                        final currentDate =
                            calendarController.currentWeek[index];
                        final dayName = DateFormat('E').format(currentDate);

                        return GestureDetector(
                          onTap: () => calendarController.selectDate(index),
                          child: Container(
                            height: 75,
                            width: 46,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: calendarController.selectedIndex.value !=
                                        index
                                    ? const Color.fromRGBO(255, 255, 255, 1)
                                    : const Color.fromRGBO(13, 110, 253, 1)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(dayName.substring(0, 1),
                                    style: calendarController
                                                .selectedIndex.value !=
                                            index
                                        ? GoogleFonts
                                            .poppins(
                                                fontWeight: FontWeight.w400,
                                                color:
                                                    const Color
                                                        .fromRGBO(125, 132, 141,
                                                        1),
                                                fontSize: 15)
                                        : GoogleFonts
                                            .poppins(
                                                fontWeight: FontWeight.w400,
                                                color: const Color.fromRGBO(
                                                    208, 217, 231, 1),
                                                fontSize: 15)),
                                Text("${currentDate.day}",
                                    style: calendarController
                                                .selectedIndex.value !=
                                            index
                                        ? GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            color:
                                                const Color.fromRGBO(27, 30, 40,
                                                    1),
                                            fontSize: 16)
                                        : GoogleFonts
                                            .poppins(
                                                fontWeight: FontWeight.w500,
                                                color: const Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                fontSize: 16)),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )),
            ],
          ),
        ));
  }
}
