import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';

class AvailableDateTime extends StatefulWidget {
  const AvailableDateTime({super.key, required this.days, required this.time});
  final List days;
  final int time;

  @override
  State<AvailableDateTime> createState() => _AvailableDateTimeState();
}

class _AvailableDateTimeState extends State<AvailableDateTime> {
  DateTime selectedDate = DateTime.now();
  String formatedDate = DateFormat("MMMM, yyyy").format(DateTime.now());
  late DateTime lastDayOfMonth;
  List timeList = [9, 15, 19];

  @override
  void initState() {
    super.initState();
    lastDayOfMonth = DateTime(selectedDate.year, selectedDate.month + 1, 0);
  }

//Date selection
  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        formatedDate = DateFormat("MMMM, yyyy").format(selectedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Available Days",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 14),
            ),
            const SizedBox(
              width: 40,
            ),
            IconButton(
              onPressed: _selectDate,
              icon: const Icon(
                Icons.calendar_today_outlined,
                color: Color.fromRGBO(245, 146, 69, 1),
                size: 15,
              ),
            ),
            Text(
              formatedDate,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(194, 195, 204, 1),
                  fontSize: 12),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
//Availables days
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              lastDayOfMonth.day,
              (index) {
                final currentDate =
                    DateTime(selectedDate.year, selectedDate.month, index + 1);
                final dayName = DateFormat('E').format(currentDate);
                final dayIndexString = (index + 1).toString();
                return Padding(
                  padding: const EdgeInsets.only(right: 3.0),
                  child: Container(
                    height: 36.0,
                    width: 72.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: widget.days.contains(dayIndexString)
                          ? const Color.fromRGBO(245, 146, 69, 1)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(40.0),
                      border: Border.all(
                        color: const Color.fromRGBO(245, 146, 69, 1),
                      ),
                    ),
                    child: Text(
                      "${dayName.substring(0, 3)}, ${index + 1}",
                      style: GoogleFonts.poppins(
                          fontSize: 12.0,
                          color: widget.days.contains(dayIndexString)
                              ? const Color.fromRGBO(255, 255, 255, 1)
                              : const Color.fromRGBO(0, 0, 0, 1),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
//Availables time
        Text(
          "Available Time",
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              color: const Color.fromRGBO(0, 0, 0, 1),
              fontSize: 14),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: List.generate(
            timeList.length,
            (index) {
              return Padding(
                padding: const EdgeInsets.only(right: 3.0),
                child: Container(
                  height: 36.0,
                  width: 72.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: widget.time == timeList[index]
                        ? const Color.fromRGBO(245, 146, 69, 1)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(40.0),
                    border: Border.all(
                      color: const Color.fromRGBO(245, 146, 69, 1),
                    ),
                  ),
                  child: Text(
                    "${timeList[index]}:00",
                    style: GoogleFonts.poppins(
                        fontSize: 12.0,
                        color: widget.time == timeList[index]
                            ? const Color.fromRGBO(255, 255, 255, 1)
                            : const Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.w500),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
