import 'package:fitness_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key, required this.selectedIndex});
  final int selectedIndex;

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  Widget selectButton(int btnIdx, String title) {
    if (widget.selectedIndex == btnIdx) {
      return Container(
        height: 36,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppTheme.primaryLightColor,
            borderRadius: BorderRadius.circular(40)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/images/${title.toLowerCase()}.png",
                color: AppTheme.primaryColor),
            const SizedBox(width: 5),
            Text(
              title,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      );
    }
    return Image.asset("assets/images/${title.toLowerCase()}.png");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      margin: const EdgeInsets.only(bottom: 5, right: 15, left: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: AppTheme.primaryColor,
          borderRadius: BorderRadius.circular(32)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/home");
              },
              child: selectButton(0, "Home")),
          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/explore");
              },
              child: selectButton(1, "Explore")),
          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/analytics");
              },
              child: selectButton(2, "Analytics")),
          GestureDetector(onTap: () {}, child: selectButton(3, "Profile")),
        ],
      ),
    );
  }
}
