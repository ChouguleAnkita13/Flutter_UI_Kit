import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class CustomCalender extends StatefulWidget {
  const CustomCalender({super.key});

  @override
  State<CustomCalender> createState() => _CustomCalenderState();
}

class _CustomCalenderState extends State<CustomCalender> {
  String formattedMonthYear = "";
  int selectedIndex = 0;
  DateTime selectedDate = DateTime.now();
  late DateTime lastDayOfMonth;

  @override
  void initState() {
    super.initState();
    selectedIndex = selectedDate.day - 1;
    lastDayOfMonth = DateTime(selectedDate.year, selectedDate.month + 1, 0);
    formattedMonthYear = DateFormat("d MMMM").format(selectedDate);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: const Color.fromRGBO(255, 255, 255, 1),
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(180, 188, 201, 0.16),
                offset: Offset(0, 6),
                blurRadius: 20)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            formattedMonthYear,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(27, 30, 40, 1),
                fontSize: 20),
          ),
          const SizedBox(height: 10.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const ClampingScrollPhysics(),
            child: Row(
              children: List.generate(
                lastDayOfMonth.day,
                (index) {
                  final currentDate = DateTime(
                      selectedDate.year, selectedDate.month, index + 1);
                  final dayName = DateFormat('E').format(currentDate);

                  return GestureDetector(
                    onTap: () => setState(() {
                      selectedIndex = index;
                      selectedDate = currentDate;
                    }),
                    child: Container(
                      height: 75,
                      width: 46,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: selectedIndex != index
                              ? const Color.fromRGBO(255, 255, 255, 1)
                              : const Color.fromRGBO(13, 110, 253, 1)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(dayName.substring(0, 1),
                              style: selectedIndex != index
                                  ? GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(
                                          125, 132, 141, 1),
                                      fontSize: 15)
                                  : GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(
                                          208, 217, 231, 1),
                                      fontSize: 15)),
                          Text("${index + 1}",
                              style: selectedIndex != index
                                  ? GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      color:
                                          const Color.fromRGBO(27, 30, 40, 1),
                                      fontSize: 16)
                                  : GoogleFonts.poppins(
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
            ),
          ),
        ],
      ),
    );
  }
}
