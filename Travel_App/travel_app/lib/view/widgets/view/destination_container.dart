import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/model/destinationmodel.dart';

class DestinationContainer extends StatelessWidget {
  const DestinationContainer({super.key, required this.destination});
  final Destinationmodel destination;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: Get.height / 5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(62, 62, 62, 1).withOpacity(0.9),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //1st Row
          Row(
            children: [
              //Destination title
              Text(
                destination.title,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 18),
              ),
              const Spacer(),
              Row(
                children: [
                  //star icon
                  const Icon(
                    Icons.star,
                    color: Color.fromRGBO(255, 211, 54, 1),
                    size: 18,
                  ),
                  const SizedBox(width: 3),
                  //Rate
                  Text(
                    "${destination.rate}",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
          //2nd Row
          Row(
            children: [
              Row(
                children: [
                  //location icon
                  const Icon(
                    Icons.location_on_outlined,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    size: 16,
                  ),
                  const SizedBox(width: 2),
                  //Destination location       
                  Text(
                    destination.location,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 13),
                  ),
                ],
              ),
               const Spacer(),
              
             Image.asset("assets/images/details/detail.png"),
            ],
          ),
          //3rd Row

          Row(
            children: [
              //Timer icon
              const Icon(
                Icons.access_time_rounded,
                color: Color.fromRGBO(255, 255, 255, 1),
                size: 16,
              ),
              const SizedBox(width: 3),
              //Destination time

              Text(
                " 45 Minutes",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 13),
              ),
            ],
          ),
          //Button to See On The Map
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 56,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(13, 110, 253, 1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                "See On The Map",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
