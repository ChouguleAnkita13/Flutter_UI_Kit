import 'package:fitness_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  String formattedMonthYear = "";
  int selectedIndex = 0;
  DateTime selectedDate = DateTime.now();
  late DateTime lastDayOfMonth;

  @override
  void initState() {
    super.initState();
    selectedIndex = selectedDate.day - 1;
    lastDayOfMonth = DateTime(selectedDate.year, selectedDate.month + 1, 0);
    formattedMonthYear = DateFormat("MMMM yyyy").format(selectedDate);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          formattedMonthYear,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 15.0),
        SizedBox(
          height: 75,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const ClampingScrollPhysics(),
            child: Row(
              children: List.generate(
                lastDayOfMonth.day,
                (index) {
                  final currentDate = DateTime(
                      selectedDate.year, selectedDate.month, index + 1);
                  final dayName = DateFormat('E').format(currentDate);

                  return Padding(
                    padding: const EdgeInsets.only(
                      right: 15.0,bottom: 15
                    ),
                    child: GestureDetector(
                      onTap: () => setState(() {
                        selectedIndex = index;
                        selectedDate = currentDate;
                      }),
                      child: Column(
                        children: [
                          Container(
                            height: 45,
                            width: 46,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: selectedIndex == index
                                  ? AppTheme.primaryColor
                                  : AppTheme.primaryLightColor,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  dayName.substring(0, 1),
                                  style: selectedIndex == index
                                      ? Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(color: AppTheme.textColor)
                                      : Theme.of(context).textTheme.labelMedium,
                                ),
                                Text(
                                  "${index + 1}",
                                  style: selectedIndex == index
                                      ? Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(color: AppTheme.textColor)
                                      : Theme.of(context).textTheme.labelMedium,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          selectedIndex == index
                              ? Container(
                                  height: 6.0,
                                  width: 6.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: AppTheme.primaryColor,
                                  ),
                                )
                              : Container(),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
