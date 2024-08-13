import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/model/destinationmodel.dart';
import 'package:travel_app/view/screens/details_screen.dart';

class BestDestination extends StatelessWidget {
  const BestDestination({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height / 2.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: destinationList.length,
        padding: const EdgeInsets.only(
          top: 30,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Get.to(const DetailsScreen(), arguments: destinationList[index]);
            },
            child: Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(right: 20),
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: const Color.fromRGBO(255, 255, 255, 1)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            destinationList[index].imgUrl,
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
                        destinationList[index].title,
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
                            "${destinationList[index].rate}",
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
                        destinationList[index].location,
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
