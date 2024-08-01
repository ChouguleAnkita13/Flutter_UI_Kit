import 'package:fashion_app/theme/app_theme.dart';
import 'package:fashion_app/view/screens/onboard_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: AppTheme.lightTheme,
      home:const OnboardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
