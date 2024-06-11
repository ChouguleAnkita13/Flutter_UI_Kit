import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FloatingAction extends StatelessWidget {
  const FloatingAction({super.key,required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100)
        ),
        child: SizedBox(
            height: 66,width: 66,
            child:Padding(
          padding: const EdgeInsets.only(top: 5),
          child:  Column(
              children: [
               const Icon(
                  Icons.shopping_cart_outlined,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  size: 24,
                ),
                Text(
                  text,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 12),
                ),
              ],
            ),
          ),
        ),
    );
  }
}