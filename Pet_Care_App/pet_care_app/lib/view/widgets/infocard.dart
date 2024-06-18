import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String content;

  const InfoCard({super.key,required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 98,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(255, 255, 255, 1),
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(22, 34, 51, 0.08),
                blurRadius: 16,
                offset: Offset(0, 8),
                spreadRadius: -4)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(0, 0, 0, 1),
                fontSize: 12),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            content,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(245, 146, 69, 1),
                fontSize: 16),
          ),
        ],
      ),
    );
  }
}
