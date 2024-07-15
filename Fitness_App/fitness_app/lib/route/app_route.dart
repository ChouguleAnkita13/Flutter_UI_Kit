import 'package:fitness_app/view/screens/analytics_screen.dart';
import 'package:fitness_app/view/screens/explore_screen.dart';
import 'package:fitness_app/view/screens/home_screen.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  "/home": (context) => const HomeScreen(),
  "/explore": (context) => const Explore(),
  "/analytics": (context) => const Analytics(),
};
