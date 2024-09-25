import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///WIDGET TO DISPLAY ALL MESSAGES
class DisplayAllMsg extends StatelessWidget {
  const DisplayAllMsg({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      ///LISTVIEW TO SHOW LIST OF MESSAGES
      shrinkWrap: true,
      itemCount: 9,
      itemBuilder: (context, index) {
        return ListTile(
          minVerticalPadding: 10.0,
          isThreeLine: true,
          leading: Container(
            height: 52,
            width: 52,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 234, 223, 1),
                shape: BoxShape.circle),

            ///PROFILE IMAGE OF MESSANGER
            child: Image.asset(
              "assets/images/home/home_person.png",
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
          ),

          ///NAME OF MESSANGER
          title: Text(
            "Sajib  Rahman",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(27, 30, 40, 1),
                fontSize: 18),
          ),

          ///RECENT MESSAGE
          subtitle: Text(
            "Hi, John! 👋 How are you doing?",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(125, 132, 141, 1),
                fontSize: 13),
          ),

          ///MESSAGE TIME
          trailing: Text(
            "Yesterday",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(125, 132, 141, 1),
                fontSize: 13),
          ),
        );
      },
    );
  }
}
