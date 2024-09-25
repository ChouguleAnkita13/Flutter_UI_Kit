import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/screens/MessageScreen/Widgets/display_all_msg.dart';
import 'package:travel_app/view/screens/SearchScreen/Widgets/search_textfield.dart';

///WIDGET TO DISPLAY MESSAGESCREEN WITH SEARCH TEXTFIELD,MORE MESSAGES BUTTON
///EDIT BUTTON AND LIST OF ALL MEASSAGES
class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///TOP ROW OF MESSAGE SCREEN CONTAINING TEXT AND MORE MESSAGES BUTTON
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    Text(
                      "Messages",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(27, 30, 40, 1),
                          fontSize: 18),
                    ),

                    ///MORE MESSAGES ICON BUTTON
                    GestureDetector(
                      onTap: () {},
                      child: const CircleAvatar(
                        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                        child: Icon(
                          Icons.more_vert,
                          size: 25,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30),

                ///MESSAGE TEXT AND EDIT BUTTON
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Messages",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(27, 30, 40, 1),
                          fontSize: 21),
                    ),

                    ///EDIT BUTTON
                    GestureDetector(
                        onTap: () {},
                        child: Image.asset("assets/icons/edit_message.png")),
                  ],
                ),
                const SizedBox(height: 20),

                ///TEXTFIELD FOR SEARCH
                const SearchTextfield(),

                const SizedBox(height: 20),

                ///TO DISPLAY ALL MESSAGES
                const Expanded(child: DisplayAllMsg())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
