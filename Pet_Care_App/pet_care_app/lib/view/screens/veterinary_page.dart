import 'package:flutter/material.dart';
import 'package:pet_care_app/view/widgets/bottomnavigation.dart';
import 'package:pet_care_app/view/widgets/floatingaction.dart';

class VeterinaryPage extends StatelessWidget {
  const VeterinaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomNavigation(),
      floatingActionButton: FloatingAction(text: "Cart"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}