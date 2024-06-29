import 'package:bicycle_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(53, 63, 84, 1),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Container(
                  decoration: AppTheme.smallContDecoration,
                padding: const EdgeInsets.only(bottom: 20),
                  child: Image.asset("assets/images/house.png")),
              label: ""),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/bag.png"), label: ""),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/wallet.png"), label: ""),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/user.png"), label: ""),
        ]);
  }
}
