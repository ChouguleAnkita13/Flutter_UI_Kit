import 'package:flutter/material.dart';
import 'package:plant_app/controller/plant_controller.dart';
import 'package:provider/provider.dart';
import 'package:plant_app/view/get_started_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create:(context)=>PlantController(),
      child: const MaterialApp(
        home: GetStarted(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
