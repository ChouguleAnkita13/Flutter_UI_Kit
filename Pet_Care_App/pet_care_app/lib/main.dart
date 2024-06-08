import 'package:flutter/material.dart';
import 'package:pet_care_app/route/app_route.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:initialScreen,
      routes: appRoutes,
      debugShowCheckedModeBanner: false,
    );
  }
}
