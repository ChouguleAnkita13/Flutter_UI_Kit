import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  final _textController = TextEditingController();

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
                //Messages display Large
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
                    GestureDetector(
                        onTap: () {},
                        child: Image.asset("assets/icons/edit_message.png")),
                  ],
                ),
                const SizedBox(height: 20),

                //Textfield for search
                TextField(
                  textAlign: TextAlign.start,
                  controller: _textController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: const Color.fromRGBO(255, 255, 255, 1),
                    filled: true,
                    prefixIcon: Image.asset(
                      "assets/icons/search.png",
                      height: 24,
                      width: 24,
                      color: const Color.fromRGBO(125, 132, 141, 1),
                    ),
                    hintStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(125, 132, 141, 1),
                        fontSize: 16),
                    hintText: 'Search for chats & messages',
                  ),
                ),

                //To display all messages
                const SizedBox(height: 20),
                Expanded(
                    child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return ListTile(
                      minVerticalPadding: 10.0,
                      isThreeLine: true,
                      leading: Container(
                        height: 56,
                        width: 56,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 234, 223, 1),
                            borderRadius: BorderRadius.circular(100)),
                        child: Image.asset(
                          "assets/images/home/home_person.png",
                          width: 30,
                          height: 30,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        "Sajib  Rahman",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(27, 30, 40, 1),
                            fontSize: 18),
                      ),
                      subtitle: Text(
                        "Hi, John! 👋 How are you doing?",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(125, 132, 141, 1),
                            fontSize: 13),
                      ),
                      trailing: Text(
                        "Yesterday",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(125, 132, 141, 1),
                            fontSize: 13),
                      ),
                    );
                  },
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
