import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/model/home_rental_model.dart';
import 'package:home_rental_app/view/details_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeRentalList = [
    const HomeRentalModel(
        name: "Night Hill Villa",
        image: "assets/images/home1.png",
        location: "London,Night Hill",
        details:
            "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet",
        rent: 5900,
        noOfBathRooms: 6,
        noOfBedRooms: 5,
        sqFit: 7000,
        rate: 4.9),
    const HomeRentalModel(
        name: "Night Villa",
        image: "assets/images/home2.png",
        location: "London,New Park",
        details:
            "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet",
        rent: 4900,
        noOfBathRooms: 4,
        noOfBedRooms: 3,
        sqFit: 5000,
        rate: 4.8),
    const HomeRentalModel(
        name: "Jumeriah Golf Estates Villa",
        image: "assets/images/nearby.png",
        location: "London,Area Plam Jumeriah",
        details:
            "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet",
        rent: 4500,
        noOfBathRooms: 5,
        noOfBedRooms: 4,
        sqFit: 6000,
        rate: 4.7)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(101, 101, 101, 0.08),
      body: Padding(
        padding: const EdgeInsets.only(left: 22, right: 22, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Hey Ankita,",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(101, 101, 101, 1)),
                ),
                const Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "assets/images/profile.png",
                    fit: BoxFit.cover,
                    height: 48,
                    width: 48,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 195,
              child: Text(
                "Let’s find your best residence",
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(0, 0, 0, 1)),
              ),
            ),
            Container(
              height: 46,
              margin: const EdgeInsets.only(top: 25, bottom: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: const Icon(
                    Icons.search_outlined,
                    color: Color.fromRGBO(33, 33, 33, 1),
                    size: 24,
                  ),
                  hintText: "Search your favourite paradise",
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(33, 33, 33, 1)),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Row(
                    children: [
                      Text(
                        "Most popular",
                        style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(0, 0, 0, 1)),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "See All",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(32, 169, 247, 1)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 327,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: homeRentalList.length,
                        itemBuilder: ((context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => DetailsPage(
                                      homeDetails: homeRentalList[index])));
                            },
                            child: Container(
                              width: 205,
                              padding: const EdgeInsets.only(
                                  top: 5, left: 8, right: 8, bottom: 8),
                              margin: const EdgeInsets.only(
                                  right: 15, top: 15, bottom: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.asset(
                                          homeRentalList[index].image,
                                          fit: BoxFit.cover,
                                          height: 196,
                                        ),
                                      ),
                                      Positioned(
                                        right: 12,
                                        top: 12,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 2),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.blue.shade200),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                color: Color.fromRGBO(
                                                    251, 227, 12, 1),
                                                size: 13,
                                              ),
                                              Text(
                                                "${homeRentalList[index].rate}",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color.fromRGBO(
                                                        255, 255, 255, 1)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    homeRentalList[index].name,
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 1)),
                                  ),
                                  Text(
                                    homeRentalList[index].location,
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromRGBO(
                                            72, 72, 72, 1)),
                                  ),
                                  Text.rich(TextSpan(children: [
                                    TextSpan(
                                      text: "\$${homeRentalList[index].rent}",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: const Color.fromRGBO(
                                              32, 169, 247, 1)),
                                    ),
                                    TextSpan(
                                      text: "/Month",
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: const Color.fromRGBO(
                                              72, 72, 72, 1)),
                                    )
                                  ])),
                                ],
                              ),
                            ),
                          );
                        })),
                  ),
                  Row(
                    children: [
                      Text(
                        "Nearby your location",
                        style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(0, 0, 0, 1)),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "More",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(32, 169, 247, 1)),
                        ),
                      ),
                    ],
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: homeRentalList.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DetailsPage(
                                    homeDetails: homeRentalList[2])));
                          },
                          child: Container(
                            height: 108,
                            width: MediaQuery.sizeOf(context).width,
                            padding: const EdgeInsets.all(8),
                            margin: const EdgeInsets.only(
                              top: 20,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    homeRentalList[2].image,
                                    fit: BoxFit.cover,
                                    height: 90,
                                    width: 90,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        homeRentalList[2].name,
                                        style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: const Color.fromRGBO(
                                                0, 0, 0, 1)),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.location_on,
                                              size: 14,
                                              color: Color.fromRGBO(
                                                  90, 90, 90, 1)),
                                          Text(
                                            homeRentalList[2].location,
                                            style: GoogleFonts.poppins(
                                                fontSize: 11,
                                                fontWeight: FontWeight.w600,
                                                color: const Color.fromRGBO(
                                                    90, 90, 90, 1)),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.sizeOf(context).width /
                                                2,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset(
                                              "assets/images/bed.png",
                                              height: 15,
                                              width: 15,
                                            ),
                                            Text(
                                              "${homeRentalList[2].noOfBedRooms} Bedrooms",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w600,
                                                  color: const Color.fromRGBO(
                                                      90, 90, 90, 1)),
                                            ),
                                            Image.asset(
                                              "assets/images/bath.png",
                                              height: 13,
                                              width: 15,
                                            ),
                                            Text(
                                              "${homeRentalList[2].noOfBathRooms} Bathrooms",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w600,
                                                  color: const Color.fromRGBO(
                                                      90, 90, 90, 1)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.sizeOf(context).width /
                                                1.7,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text.rich(TextSpan(children: [
                                              TextSpan(
                                                text:
                                                    "\$${homeRentalList[2].rent}",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color: const Color.fromRGBO(
                                                        32, 169, 247, 1)),
                                              ),
                                              TextSpan(
                                                text: "/Month",
                                                style: GoogleFonts.poppins(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color.fromRGBO(
                                                        72, 72, 72, 1)),
                                              )
                                            ])),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
