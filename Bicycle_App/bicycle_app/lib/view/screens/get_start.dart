import 'package:flutter/material.dart';

class GetStart extends StatelessWidget {
  const GetStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(53, 63, 84, 1),
                  Color.fromRGBO(75, 76, 237, 1),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.5, 0.5]),),
         child: Stack(
          children: [
            Column(
              children: [
                
              ],
            )
          ],
         ),
      ),

    );
  }
}
