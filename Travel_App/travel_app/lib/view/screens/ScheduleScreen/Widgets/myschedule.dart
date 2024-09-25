import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/controller/destination_controller.dart';

///WIDGET TO DISPLAY DESTIONATIONS THOSE SCHEDULED
class Myschedule extends StatelessWidget {
  const Myschedule({super.key});

  @override
  Widget build(BuildContext context) {
    ///USING GET.FIND LOCATES THE CONTROLLER THAT WAS CREATED
    final destinationController = Get.find<DestinationController>();

    return Column(
      children: [
        ///MYSCHEDULE TEXT WITH VIEW ALL BUTTON
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Schedule",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(27, 30, 40, 1),
                  fontSize: 20),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                "View all",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(13, 110, 253, 1),
                    fontSize: 16),
              ),
            ),
          ],
        ),

        const SizedBox(height: 20),

        Expanded(
          child: ListView.separated(

              ///LIST VIEW TO DISPLAY ALL DESTINATION WHICH ARE SCHEDULED
              itemCount: destinationController.destinationList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Row(
                      children: [
                        ///DESTINATION IMAGE
                        ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              destinationController
                                  .destinationList[index].imgUrl,
                              height: 80,
                              fit: BoxFit.cover,
                              width: 80,
                            )),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ///BOOKING DATE
                            Row(
                              children: [
                                Image.asset("assets/icons/calender.png",
                                    height: 16, width: 16),
                                Text(
                                  "   26 January 2024",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(
                                          125, 132, 141, 1),
                                      fontSize: 13),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),

                            ///DESTINATION NAME
                            Text(
                              destinationController
                                  .destinationList[index].title,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(27, 30, 40, 1),
                                  fontSize: 16),
                            ),
                            const SizedBox(height: 4),

                            ///DESTINATION LOCATION
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on_outlined,
                                  color: Color.fromRGBO(125, 132, 141, 1),
                                  size: 15,
                                ),
                                const SizedBox(width: 2),
                                Text(
                                  destinationController
                                      .destinationList[index].location,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(
                                          125, 132, 141, 1),
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          ],
                        ),

                        ///FORWARD ARROW ICON
                        const Spacer(),
                        const Icon(Icons.arrow_forward_ios,
                            color: Color.fromRGBO(125, 132, 141, 1), size: 13)
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 15)),
        ),
      ],
    );
  }
}
