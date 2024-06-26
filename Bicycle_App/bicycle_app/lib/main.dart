import 'package:bicycle_app/view/screens/get_start.dart';
import 'package:bicycle_app/view/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:bicycle_app/theme/app_theme.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: const HomeScreen(),
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
