import 'package:flutter/material.dart';
import 'package:travel_app/view/screens/home_screen.dart';
import 'package:travel_app/view/screens/messages_screen.dart';
import 'package:travel_app/view/screens/profile_screen.dart';
import 'package:travel_app/view/screens/schedule_screen.dart';
import 'package:travel_app/view/screens/search_screen.dart';

class CustomNavBarScreen extends StatefulWidget {
  const CustomNavBarScreen({super.key});

  @override
  State<CustomNavBarScreen> createState() => _CustomNavBarScreenState();
}

class _CustomNavBarScreenState extends State<CustomNavBarScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = [
    const HomeScreen(),
    const ScheduleScreen(),
    const SearchScreen(),
    const MessagesScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset("assets/icons/home.png"), label: "Home"),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/icons/calender.png"),
                  label: "Calender"),
              BottomNavigationBarItem(
                  icon: SizedBox(
                    height: 56,
                    width: 56,
                    child: CircleAvatar(
                      backgroundColor: const Color.fromRGBO(13, 110, 253, 1),
                      child: Image.asset("assets/icons/search.png"),
                    ),
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/icons/chat.png"),
                  label: "Messages"),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/icons/person.png"),
                  label: "Profile"),
            ],
            selectedItemColor: const Color.fromRGBO(13, 110, 253, 1),
            unselectedItemColor: const Color.fromRGBO(125, 132, 141, 1),
            backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped),
      ),
    );
  }
}
