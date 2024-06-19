import 'package:bicycle_app/view/screens/get_start.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GetStart(),
      debugShowCheckedModeBanner: false,
    );
  }
}
