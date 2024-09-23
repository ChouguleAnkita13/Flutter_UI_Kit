import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/screens/ProfileScreen/Widgets/points.dart';
import 'package:travel_app/view/screens/ProfileScreen/Widgets/profile_options.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                Text(
                  "Profile",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(27, 30, 40, 1),
                      fontSize: 18),
                ),
                GestureDetector(
                  onTap: () {},
                  child:Image.asset("assets/icons/edit.png")
                )
              ],
            ),
            //Profile details
            Column(
              children: [
                Container(
                  height: 96,
                  width: 96,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 234, 223, 1),
                      borderRadius: BorderRadius.circular(100)),
                  child: Image.asset(
                    "assets/images/home/home_person.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Leonardo",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(27, 30, 40, 1),
                      fontSize: 24),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Leonardo@gmail.com",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(125, 132, 141, 1),
                      fontSize: 14),
                ),
              ],
            ),

            //reward points,travel trips,bucket list
            const PointsWidget(),

            //Profile options:Bookmark,Setting,previous trips,versions
            const ProfileOptions()
          ],
        ),
      ),
    );
  }
}
