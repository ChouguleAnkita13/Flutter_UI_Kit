import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/controller/destination_controller.dart';
import 'package:travel_app/view/widgets/custom_container.dart';

///WIDGET TO SHOW CONTAINER WITH DESTIONATION DETAILS
class DestinationContainer extends StatelessWidget {
  const DestinationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    ///GET SELECTEDDESTINATION USING DESTINATION GETX CONTROLLER
    final selectedDestination =
        Get.find<DestinationController>().selectedDestination;
    return Container(
      padding: const EdgeInsets.all(15),
      height: Get.height / 4.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(62, 62, 62, 1).withOpacity(0.9),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ///1ST ROW
          Row(
            children: [
              ///DESTINATION TITLE
              Text(
                selectedDestination!.title,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 18),
              ),
              const Spacer(),
              Row(
                children: [
                  ///STAR ICON
                  const Icon(
                    Icons.star,
                    color: Color.fromRGBO(255, 211, 54, 1),
                    size: 18,
                  ),
                  const SizedBox(width: 3),

                  ///RATE
                  Text(
                    "${selectedDestination.rate}",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 15),
                  ),
                ],
              ),
            ],
          ),

          ///2ND ROW
          Row(
            children: [
              Row(
                children: [
                  ///LOCATION ICON
                  const Icon(
                    Icons.location_on_outlined,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    size: 16,
                  ),
                  const SizedBox(width: 2),

                  ///DESTINATION LOCATION
                  Text(
                    selectedDestination.location,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 13),
                  ),
                ],
              ),
              const Spacer(),
              Image.asset(
                "assets/images/details/detail.png",
                height: 24,
                width: 24,
              ),
            ],
          ),

          ///3RD ROW
          Row(
            children: [
              ///TIMER ICON
              const Icon(
                Icons.access_time_rounded,
                color: Color.fromRGBO(255, 255, 255, 1),
                size: 16,
              ),
              const SizedBox(width: 3),

              ///DESTINATION TIME
              Text(
                " 45 Minutes",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 13),
              ),
            ],
          ),

          ///BUTTON TO SEE ON THE MAP
          GestureDetector(
            onTap: () {},

            ///[CustomContainer] CALLED FOR CONTAINER DECORATION
            child: const CustomContainer(title: "See On The Map"),
          ),
        ],
      ),
    );
  }
}
