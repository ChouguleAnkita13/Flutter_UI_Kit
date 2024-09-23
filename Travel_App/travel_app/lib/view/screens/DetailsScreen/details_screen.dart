import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:travel_app/view/screens/ViewScreen/view_screen.dart';
import 'package:travel_app/view/screens/DetailsScreen/Widgets/detailsbar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(Get.arguments.imgUrl,
                  width: Get.width,
                  fit: BoxFit.cover,
                  height: Get.height / 2.2),
              const Positioned(
                  left: 20, right: 20, top: 30, child: Detailsbar())
            ],
          ),
          Expanded(
              child: Container(
            width: Get.width,
            padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
            decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(55),
                    topRight: Radius.circular(55))),
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
                //Title location
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Get.arguments.title,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(27, 30, 40, 1),
                              fontSize: 24),
                        ),
                        Text(
                          Get.arguments.location,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(125, 132, 141, 1),
                              fontSize: 15),
                        ),
                      ],
                    ),
                    Image.asset("assets/images/details/detail.png")
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                //Rate reviws
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Color.fromRGBO(255, 211, 54, 1),
                          size: 18,
                        ),
                        const SizedBox(width: 3),
                        Text(
                          "${Get.arguments.rate}",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(27, 30, 40, 1),
                              fontSize: 15),
                        ),
                        Text(
                          "(${Get.arguments.reviews})",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(125, 132, 141, 1),
                              fontSize: 15),
                        ),
                      ],
                    ),
                    Text.rich(TextSpan(children: [
                      TextSpan(
                        text: "\$${Get.arguments.price}",
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
                //detail images
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
                            //Navigate to view screen
                            Get.to(const ViewScreen(), arguments: {
                              "destination": Get.arguments,
                              "viewImg":
                                  "assets/images/details/d${index + 1}.png"
                            });
                          },
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
//About Destination
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
          )),
        ],
      ),
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
