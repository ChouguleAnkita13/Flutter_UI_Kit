import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///WIDGET TO DISPLAY PASSWORD TEXTFIELD
class PasswordTextfield extends StatefulWidget {
  const PasswordTextfield({super.key});

  @override
  State<PasswordTextfield> createState() => _PasswordTextfieldState();
}

class _PasswordTextfieldState extends State<PasswordTextfield> {
  bool _isPasswordVisiable = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: const Color.fromRGBO(27, 30, 40, 1),
      style: GoogleFonts.poppins(
          fontWeight: FontWeight.w400,
          color: const Color.fromRGBO(27, 30, 40, 1),
          fontSize: 16),
      obscureText: _isPasswordVisiable,
      obscuringCharacter: "*",
      decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromRGBO(247, 247, 249, 1),
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _isPasswordVisiable = !_isPasswordVisiable;
              });
            },
            child: Icon(
              _isPasswordVisiable
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              size: 24,
              color: const Color.fromRGBO(125, 132, 141, 1),
            ),
          ),
          hintText: "Enter your password",
          hintStyle: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(125, 132, 141, 1),
              fontSize: 16),
          border: InputBorder.none),
    );
  }
}
