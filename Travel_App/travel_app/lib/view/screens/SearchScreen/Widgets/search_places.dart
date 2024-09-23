import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/controller/destination_controller.dart';
import 'package:travel_app/view/screens/DetailsScreen/details_screen.dart';

class SearchPlaces extends StatelessWidget {
  SearchPlaces({super.key});

  //Initialize controller
  final DestinationController initDestinationController =
      Get.put(DestinationController());
  //using Get.find locates the controller that was created
  final destinationController = Get.find<DestinationController>();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            childAspectRatio: 0.84,
            mainAxisSpacing: 20),
        itemCount: destinationController.destinationList.length,
        // reverse: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Get.to(const DetailsScreen(),
                  arguments: destinationController.destinationList[index]);
            },
            child: Container(
              //white Container
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromRGBO(180, 188, 201, 0.12),
                        offset: Offset(0, 6),
                        blurRadius: 16)
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      //Image
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        destinationController.destinationList[index].imgUrl,
                        height: Get.height / 7.96,
                        fit: BoxFit.cover,
                        width: Get.width / 2,
                      )),
                  //Title
                  Text(
                    destinationController.destinationList[index].title,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(27, 30, 40, 1),
                        fontSize: 14),
                  ),
                  //Location
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: Color.fromRGBO(125, 132, 141, 1),
                        size: 12,
                      ),
                      const SizedBox(width: 2),
                      Expanded(
                        child: Text(
                          destinationController.destinationList[index].location,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(125, 132, 141, 1),
                              fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  //Price
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text:
                          "\$${destinationController.destinationList[index].price}",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(13, 110, 253, 1),
                          fontSize: 12),
                    ),
                    TextSpan(
                      text: "/Person",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(125, 132, 141, 1),
                          fontSize: 12),
                    )
                  ])),
                ],
              ),
            ),
          );
        });
  }
}
