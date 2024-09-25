import 'package:flutter/material.dart';

///WIDGET TO SHOW LINE WITH CIRCLE BELOW THE THE VIEWCONTAINER
class LineCircle extends StatelessWidget {
  const LineCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          ///SHOWS VERTICLE LINE
          Container(
            width: 2,
            height: 50,
            color: const Color.fromRGBO(62, 62, 62, 1).withOpacity(0.9),
          ),

          ///SHOWS BLACK CIRCLE WITH INNER BLUE CIRCLE
          Container(
            width: 24,
            height: 24,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 62, 62, 1).withOpacity(0.9),
                shape: BoxShape.circle),
            child: const SizedBox(
                width: 12,
                child: CircleAvatar(
                  backgroundColor: Color.fromRGBO(13, 110, 253, 1),
                )),
          )
        ],
      ),
    );
  }
}
