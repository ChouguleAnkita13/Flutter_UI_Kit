import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PointsWidget extends StatelessWidget {
  const PointsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color.fromRGBO(255, 255, 255, 1),
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(180, 188, 201, 0.12),
                offset: Offset(0, 6),
                blurRadius: 16)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Reward Points
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Reward Points",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(27, 30, 40, 1),
                    fontSize: 13),
              ),
              Text(
                "360",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(13, 110, 253, 1),
                    fontSize: 18),
              ),
            ],
          ),
          //Travel Trips
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Travel Trips",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(27, 30, 40, 1),
                    fontSize: 13),
              ),
              Text(
                "238",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(13, 110, 253, 1),
                    fontSize: 18),
              ),
            ],
          ),
          //Bucket List
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Bucket List",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(27, 30, 40, 1),
                    fontSize: 13),
              ),
              Text(
                "453",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(13, 110, 253, 1),
                    fontSize: 18),
              ),
            ],
          )
        ],
      ),
    );
  }
}
