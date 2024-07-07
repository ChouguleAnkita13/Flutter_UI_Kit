import 'package:fitness_app/view/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class Analytics extends StatelessWidget {
  const Analytics({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      bottomNavigationBar: BottomNavigation(selectedIndex: 2,),
    );
  }
}