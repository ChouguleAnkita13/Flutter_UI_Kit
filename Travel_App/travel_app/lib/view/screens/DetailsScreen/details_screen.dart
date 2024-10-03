import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:travel_app/controller/destination_controller.dart';
import 'package:travel_app/view/screens/DetailsScreen/Widgets/detailsbar.dart';

///WIDGET TO DISPLAY DETAILS OF DESTINATION
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = Get.width;

    ///USING GET.FIND LOCATES THE CONTROLLER THAT WAS CREATED
    ///GET SELECTEDDESTINATION USING DESTINATION GETX CONTROLLER
    final selectedDestination =
        Get.find<DestinationController>().selectedDestination;

    /// CHECK IF SELECTEDDESTINATION IS NULL
    if (selectedDestination == null) {
      return Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () => Get.toNamed("/navbar"),
            child: const Text(
              'No destination selected.',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      );
    }

    /// IF SELECTEDDESTINATION IS NOT NULL
    return Scaffold(
      body: Column(
        children: [
          ///DESTINATION IMAGE
          Stack(
            children: [
              Image.asset(selectedDestination.imgUrl,
                  width: deviceWidth,
                  fit: BoxFit.cover,
                  height: Get.height / 2.2),
              const Positioned(
                  left: 20, right: 20, top: 30, child: Detailsbar())
            ],
          ),
          Expanded(
            child: Container(
              width: deviceWidth,
              padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(55),
                  topRight: Radius.circular(55),
                ),
              ),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Center(
                    child: Container(
                        width: 40,
                        height: 5,
                        margin: const EdgeInsets.only(bottom: 20),
                        color: const Color.fromRGBO(125, 132, 141, 1)
                            .withOpacity(0.2)),
                  ),

                  ///DESTINATIO NAME AND LOCATION
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ///DESTINATION NAME
                          Text(
                            selectedDestination.title,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(27, 30, 40, 1),
                                fontSize: 24),
                          ),

                          ///DESTINATION ADDRESS
                          Text(
                            selectedDestination.location,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(125, 132, 141, 1),
                                fontSize: 15),
                          ),
                        ],
                      ),

                      ///IMAGE STACK
                      const Spacer(),
                      Expanded(
                        child: Stack(children: [
                          Image.asset("assets/images/details/detail.png"),
                          Positioned(
                              top: 0,
                              bottom: 0,
                              right: 0,
                              left: deviceWidth * 0.0009,
                              child: Image.asset(
                                "assets/images/details/detail.png",
                              )),
                        ]),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  ///DESTINATION LOCATION ,RATING, REVIEWS AND CHARGES
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///DESTINATION LOCATION
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            color: Color.fromRGBO(125, 132, 141, 1),
                            size: 16,
                          ),
                          const SizedBox(width: 2),
                          Text(
                            // Get.arguments.location,
                            "Tekergat",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(125, 132, 141, 1),
                                fontSize: 15),
                          ),
                        ],
                      ),

                      ///DESTINATION RATING AND REVIEWS
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Color.fromRGBO(255, 211, 54, 1),
                            size: 18,
                          ),
                          const SizedBox(width: 3),
                          Text(
                            "${selectedDestination.rate}",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(27, 30, 40, 1),
                                fontSize: 15),
                          ),
                          Text(
                            "(${selectedDestination.reviews})",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(125, 132, 141, 1),
                                fontSize: 15),
                          ),
                        ],
                      ),

                      ///DESTINATION CHARGES PER PERSON
                      Text.rich(TextSpan(children: [
                        TextSpan(
                          text: "\$${selectedDestination.price}",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(13, 110, 253, 1),
                              fontSize: 15),
                        ),
                        TextSpan(
                          text: "/Person",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(125, 132, 141, 1),
                              fontSize: 15),
                        )
                      ])),
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  ///DESTINATION VIEWS IMAGES
                  SizedBox(
                    height: 42,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        separatorBuilder: (context, index) => SizedBox(
                              width: Get.width / 9.999 - 10,
                            ),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              ///NAVIGATE TO VIEW SCREEN
                              Get.toNamed("/view",
                                  arguments:
                                      "assets/images/details/d${index + 1}.png");
                            },

                            ///VIEWS IN IMAGES
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                "assets/images/details/d${index + 1}.png",
                                width: 42,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  ///ABOUT DESTINATION
                  Text(
                    "About Destination",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(27, 30, 40, 1),
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  ///DESCRIPTION ABOUT DESTINATION
                  ReadMoreText(
                    "You will get a complete travel package on the beaches.Packages in the form of airline tickets, recommended Hotel rooms, Have you ever been on holiday. Packages in the form of airline tickets, recommended Hotel rooms, Have you ever been on holiday. Packages in the form of airline tickets, recommended Hotel rooms, Have you ever been on holiday to the Greek ETC",
                    trimCollapsedText: "Read More",
                    trimExpandedText: " ...Read less",
                    trimLines: 5,
                    trimMode: TrimMode.Line,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(125, 132, 141, 1),
                        fontSize: 13),
                    moreStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(255, 112, 41, 1),
                        fontSize: 13),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      ///FLOATINGACTIONBUTTON TO BOOK DESTINATION
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: Get.width - 40,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color.fromRGBO(13, 110, 253, 1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Text(
            "Book Now",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(255, 255, 255, 1),
                fontSize: 16),
          ),
        ),
      ),
    );
  }
}
