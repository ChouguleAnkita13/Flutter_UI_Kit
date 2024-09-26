import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:travel_app/view/screens/HomeScreen/home_screen.dart';
import 'package:travel_app/view/screens/MessageScreen/messages_screen.dart';
import 'package:travel_app/view/screens/ProfileScreen/profile_screen.dart';
import 'package:travel_app/view/screens/ScheduleScreen/schedule_screen.dart';
import 'package:travel_app/view/screens/SearchScreen/search_screen.dart';

class NavbarController extends GetxController {
  int _selectedIndex = 0;

  ///LIST OF WIDGETS
  final List<Widget> widgetOptions = [
    const HomeScreen(),
    const ScheduleScreen(),
    const SearchScreen(),
    const MessagesScreen(),
    const ProfileScreen(),
  ];

  ///GETTER FOR SELECTEDINDEX
  get selectedIndex => _selectedIndex;

  ///FUNCTION TO SET SELECTEDINDEX
  void onItemTapped(int index) {
    _selectedIndex = index;
    update();
  }
}
