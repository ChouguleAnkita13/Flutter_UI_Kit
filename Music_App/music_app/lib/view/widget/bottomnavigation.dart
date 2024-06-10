import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex=0;
  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 26,
        unselectedItemColor: const Color.fromRGBO(157, 178, 206, 1),
        backgroundColor: const Color.fromRGBO(19, 19, 19, 0.9),
        selectedItemColor: const Color.fromRGBO(230, 154, 21, 1),
        items:const [
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.delete_outline_outlined), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_rounded), label: "Profile"),
        ],
        currentIndex: _selectedIndex,
        onTap: (index){
           setState(() {
      _selectedIndex = index;
    });
        },
      );
    
  }
}