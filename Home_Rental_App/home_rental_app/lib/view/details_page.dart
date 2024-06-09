import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/model/home_rental_model.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, this.homeDetails});
  final HomeRentalModel? homeDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(101, 101, 101, 0.08),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width / 1.8,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/home");
                      },
                      icon: const Icon(Icons.arrow_back_ios_new,
                          size: 24, color: Color.fromRGBO(0, 0, 0, 1))),
                  const Spacer(),
                  Text(
                    "Details",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(0, 0, 0, 1)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  homeDetails!.image,
                  fit: BoxFit.cover,
                  height: 244,
                  width: MediaQuery.sizeOf(context).width,
                ),
              ),
              Positioned(
                left: 12,
                top: 12,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue.shade200),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color.fromRGBO(251, 227, 12, 1),
                        size: 16,
                      ),
                      Text(
                        "${homeDetails!.rate}",
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ],
                  ),
                ),
              )
            ]),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 170,
                      child: Text(
                        homeDetails!.name,
                        style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(0, 0, 0, 1)),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      homeDetails!.location,
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(72, 72, 72, 1)),
                    ),
                  ],
                ),
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "\$${homeDetails!.rent}",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(32, 169, 247, 1)),
                  ),
                  TextSpan(
                    text: "/Month",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(72, 72, 72, 1)),
                  ),
                ])),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView(children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 141,
                        width: 112,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/images/bed.png",
                              height: 18,
                              width: 30,
                            ),
                            Text(
                              "Bedrooms",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(90, 90, 90, 1)),
                            ),
                            Text(
                              "${homeDetails!.noOfBedRooms}",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(0, 0, 0, 1)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 141,
                        width: 112,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/images/bath.png",
                              height: 26,
                              width: 30,
                            ),
                            Text(
                              "Bathrooms",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(90, 90, 90, 1)),
                            ),
                            Text(
                              "${homeDetails!.noOfBathRooms}",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(0, 0, 0, 1)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 141,
                        width: 112,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/square.png",
                                height: 30,
                                width: 30,
                                color: const Color.fromRGBO(90, 90, 90, 1)),
                            Text(
                              "Square ft",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(90, 90, 90, 1)),
                            ),
                            Text(
                              "${homeDetails!.sqFit} sq ft",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(0, 0, 0, 1)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  homeDetails!.details,
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(0, 0, 0, 1)),
                )
              ]),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Stack(
        children: [
          Container(
            color: Colors.white,
            width: MediaQuery.sizeOf(context).width,
            height: 100,
          ),
          Positioned(
            top: 20,
            left: 76,
            width: 220,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/home");
              },
              backgroundColor: const Color.fromRGBO(32, 169, 247, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              child: Text(
                "Rent Now",
                style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(255, 255, 255, 1)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
