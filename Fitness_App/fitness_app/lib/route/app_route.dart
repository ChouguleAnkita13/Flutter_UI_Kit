import 'package:fitness_app/view/screens/analytics.dart';
import 'package:fitness_app/view/screens/explore.dart';
import 'package:fitness_app/view/screens/home.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  "/home": (context) => const HomeScreen(),
  "/explore": (context) => const Explore(),
  "/analytics": (context) => const Analytics(),
};
