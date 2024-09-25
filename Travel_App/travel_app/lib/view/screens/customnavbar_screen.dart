import 'package:flutter/material.dart';
import 'package:travel_app/view/screens/HomeScreen/home_screen.dart';
import 'package:travel_app/view/screens/MessageScreen/messages_screen.dart';
import 'package:travel_app/view/screens/ProfileScreen/profile_screen.dart';
import 'package:travel_app/view/screens/ScheduleScreen/schedule_screen.dart';
import 'package:travel_app/view/screens/SearchScreen/search_screen.dart';

///WIDGET TO DISPLAY CUSTOM NAVIGATIONBAR
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
              const BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/icons/home.png")),
                  label: "Home"),
              const BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/icons/calender.png")),
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
              const BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/icons/chat.png")),
                  label: "Messages"),
              const BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/icons/person.png")),
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
