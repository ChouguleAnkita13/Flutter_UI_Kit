import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileTextfield extends StatelessWidget {
  const MobileTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.sizeOf(context).width,
      margin: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromRGBO(204, 211, 196, 1)),
        boxShadow: const [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.06),
              offset: Offset(0, 8),
              blurRadius: 20)
        ],
        color: Colors.white,
      ),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        cursorColor: const Color.fromRGBO(164, 164, 164, 1),
        decoration: InputDecoration(
            prefixIcon:Image.asset("assets/images/phone.png"),
            hintText: "Mobile Number",
            hintStyle: GoogleFonts.inter(
                textStyle: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(164, 164, 164, 1))),
            border: InputBorder.none),
      ),
    );
  }
}
