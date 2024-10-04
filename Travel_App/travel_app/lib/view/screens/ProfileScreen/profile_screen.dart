import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/screens/ProfileScreen/Widgets/points.dart';
import 'package:travel_app/view/screens/ProfileScreen/Widgets/profile_details.dart';
import 'package:travel_app/view/screens/ProfileScreen/Widgets/profile_options.dart';

///WIDGET TO DISPLAY PROFILE SCREEN
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ///TOP ROW
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
                    onTap: () {}, child: Image.asset("assets/icons/edit.png"))
              ],
            ),

            ///PROFILE DETAILS
            const ProfileDetails(),

            ///REWARD POINTS,TRAVEL TRIPS,BUCKET LIST
            const PointsWidget(),

            ///PROFILE OPTIONS:BOOKMARK,SETTING,PREVIOUS TRIPS,VERSIONS
            const ProfileOptions()
          ],
        ),
      ),
    );
  }
}
