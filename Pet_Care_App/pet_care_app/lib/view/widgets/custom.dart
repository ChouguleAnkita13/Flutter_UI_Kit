import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Custom extends StatelessWidget {
  const Custom({super.key, required this.imgUrl, required this.text});
  final String imgUrl;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(top: 15, bottom: 18),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color.fromRGBO(255, 255, 255, 1),
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(22, 34, 51, 0.08),
                blurRadius: 16,
                offset: Offset(0, 8),
                spreadRadius: -4)
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 191,
                child: Text(
                  text,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 14),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 34,
                  width: 89,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromRGBO(245, 146, 69, 1),
                  ),
                  child: Text(
                    "See More",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  imgUrl,
                  width: 98,
                  height: 96,
                  fit: BoxFit.cover,
                )),
          ),
        ],
      ),
    );
  }
}
