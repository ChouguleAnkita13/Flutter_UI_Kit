import 'package:fashion_app/theme/app_theme.dart';
import 'package:fashion_app/view/screens/cart_screen.dart';
import 'package:fashion_app/view/screens/home_screen.dart';
import 'package:fashion_app/view/screens/search_screen.dart';
import 'package:fashion_app/view/screens/setting_screen.dart';
import 'package:flutter/material.dart';
class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({super.key});

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = [
    const HomeScreen(),
    const SearchScreen(),
    const CartScreen(),
    const SettingScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Cart',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppTheme.primaryLightColor,
        unselectedItemColor: AppTheme.primaryColor,
        type: BottomNavigationBarType.fixed,
        iconSize: 26,
        onTap: _onItemTapped,
      ),
    );
  }
}
