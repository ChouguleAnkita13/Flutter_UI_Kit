import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CalendarController extends GetxController {
  // OBSERVABLES
  RxInt selectedIndex = 0.obs;
  Rx<DateTime> selectedDate = DateTime.now().obs;
  RxString formattedMonthYear = ''.obs;
  List<DateTime> currentWeek = [];

  @override
  void onInit() {
    super.onInit();
    // Set selected date to today
    selectedIndex.value = selectedDate.value.weekday - 1;
    formattedMonthYear.value =
        DateFormat("MMMM yyyy").format(selectedDate.value);
    _generateCurrentWeek(selectedDate.value);
  }

  /// Generate the list of days for the current week
  void _generateCurrentWeek(DateTime date) {
    currentWeek = [];
    final firstDayOfWeek = date.subtract(Duration(days: date.weekday - 1));
    for (int i = 0; i < 7; i++) {
      currentWeek.add(firstDayOfWeek.add(Duration(days: i)));
    }
  }

  /// FUNCTION TO SELECT DATE
  void selectDate(int index) {
    selectedIndex.value = index;
    selectedDate.value = currentWeek[index];
    formattedMonthYear.value =
        DateFormat("MMMM yyyy").format(selectedDate.value);
  }
}
