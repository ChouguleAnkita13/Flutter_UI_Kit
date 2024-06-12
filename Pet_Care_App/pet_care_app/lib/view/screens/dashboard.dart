import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/view/widgets/bottomnavigation.dart';
import 'package:pet_care_app/view/widgets/category.dart';
import 'package:pet_care_app/view/widgets/custom.dart';
import 'package:pet_care_app/view/widgets/floatingaction.dart';
import 'package:pet_care_app/view/widgets/search_container.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 0.04),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 30, left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/images/dashboard/profile.png",
                      height: 56,
                      width: 56,
                    )),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, Ankita",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 14),
                    ),
                    Text(
                      "Good Morning !",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(194, 195, 204, 1),
                          fontSize: 14),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/notification");
                    },
                    icon: const Icon(
                      Icons.notifications_none_outlined,
                      weight: 1,
                      color: Color.fromRGBO(25, 25, 25, 1),
                      size: 30,
                    ))
              ],
            ),
            const SearchContainer(),
            Container(
              height: 100,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromRGBO(22, 34, 51, 0.08),
                        blurRadius: 16,
                        offset: Offset(0, 8),
                        spreadRadius: -4)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "In Love With Pets? ",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 16),
                      ),
                      Text(
                        "Get all what you need for them",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(245, 146, 69, 1),
                            fontSize: 12),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Expanded(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          "assets/images/dashboard/image.png",
                          width: 76,
                          height: 67,
                        )),
                  ),
                ],
              ),
            ),
           const Category(),
            Expanded(
              child: ListView(
                children: [
                  Text(
                    "Event",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 14),
                  ),
                  const Custom(
                      imgUrl: "assets/images/dashboard/event.png",
                      text: "Find and Join in Special Events For Your Pets!"),
                  Text(
                    "Community",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 14),
                  ),
                  const Custom(
                      imgUrl: "assets/images/dashboard/community.png",
                      text: "Connect and share with communities!")
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const FloatingAction(text: "Shop"),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
