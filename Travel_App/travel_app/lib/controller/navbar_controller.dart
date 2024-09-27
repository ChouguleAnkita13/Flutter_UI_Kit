import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:travel_app/view/screens/HomeScreen/home_screen.dart';
import 'package:travel_app/view/screens/MessageScreen/messages_screen.dart';
import 'package:travel_app/view/screens/ProfileScreen/profile_screen.dart';
import 'package:travel_app/view/screens/ScheduleScreen/schedule_screen.dart';
import 'package:travel_app/view/screens/SearchScreen/search_screen.dart';

/// NAVBAR CONTROLLER TO MANAGE BOTTOM NAVIGATION BAR SELECTION
class NavbarController extends GetxController {
  /// PRIVATE VARIABLE TO TRACK THE CURRENTLY SELECTED INDEX
  int _selectedIndex = 0;

  /// LIST OF WIDGETS THAT WILL BE DISPLAYED WHEN CORRESPONDING NAV ITEM IS SELECTED
  final List<Widget> widgetOptions = [
    const HomeScreen(),
    const ScheduleScreen(),
    const SearchScreen(),
    const MessagesScreen(),
    const ProfileScreen(),
  ];

  /// GETTER TO ACCESS THE SELECTED INDEX FROM OUTSIDE THE CLASS
  get selectedIndex => _selectedIndex;

  /// FUNCTION TO HANDLE ITEM SELECTION IN THE NAVIGATION BAR
  void onItemTapped(int index) {
    /// UPDATING THE SELECTED INDEX BASED ON USER SELECTION
    _selectedIndex = index;

    /// CALLING UPDATE METHOD TO REFLECT THE CHANGES IN THE UI
    update();
  }
}
