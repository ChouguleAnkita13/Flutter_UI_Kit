import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/controller/destination_controller.dart';
import 'package:travel_app/view/screens/details_screen.dart';

class BestDestination extends StatelessWidget {
   BestDestination({super.key});

  //Initialize controller
  final DestinationController initDestinationController=Get.put(DestinationController());
  //using Get.find locates the controller that was created
  final destinationController=Get.find<DestinationController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height / 2.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount:destinationController.destinationList.length,
        padding: const EdgeInsets.only(
          top: 30,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Get.to(const DetailsScreen(), arguments: destinationController.destinationList[index]);
            },
            child: Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(right: 20),
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromRGBO(180, 188, 201, 0.12),
                        offset: Offset(0, 6),
                        blurRadius: 16)
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            destinationController.destinationList[index].imgUrl,
                            height: Get.height / 3.5,
                            fit: BoxFit.cover,
                            width: 240,
                          )),
                      Positioned(
                          top: 10,
                          right: 20,
                          child: CircleAvatar(
                            backgroundColor: const Color.fromRGBO(27, 30, 40, 1)
                                .withOpacity(0.05),
                            child: const Icon(
                              Icons.bookmark_outline,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        destinationController.destinationList[index].title,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(27, 30, 40, 1),
                            fontSize: 16),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Color.fromRGBO(255, 211, 54, 1),
                            size: 18,
                          ),
                          const SizedBox(width: 3),
                          Text(
                            "${destinationController.destinationList[index].rate}",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(27, 30, 40, 1),
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: Color.fromRGBO(125, 132, 141, 1),
                        size: 16,
                      ),
                      const SizedBox(width: 2),
                      Text(
                        destinationController.destinationList[index].location,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(125, 132, 141, 1),
                            fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
