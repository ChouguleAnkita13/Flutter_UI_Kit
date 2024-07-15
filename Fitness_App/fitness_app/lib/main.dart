import 'package:fitness_app/route/app_route.dart';
import 'package:fitness_app/theme/app_theme.dart';
import 'package:fitness_app/view/screens/getstart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const GetStart(),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routes: appRoutes,
    );
  }
}
