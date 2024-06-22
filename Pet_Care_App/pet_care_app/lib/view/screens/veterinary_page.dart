import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/items/itemlists.dart';
import 'package:pet_care_app/view/widgets/bottomnavigation.dart';
import 'package:pet_care_app/view/widgets/category_services.dart';
import 'package:pet_care_app/view/widgets/floatingaction.dart';
import 'package:pet_care_app/view/widgets/search_container.dart';
import 'package:pet_care_app/view/widgets/specitalist.dart';

class VeterinaryPage extends StatelessWidget {
  const VeterinaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: Color.fromRGBO(245, 146, 69, 1),
                  size: 24,
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  "London,UK",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(194, 195, 204, 1),
                      fontSize: 15),
                ),
              ],
            ),
            Container(
              height: 99,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color.fromRGBO(245, 146, 69, 1),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromRGBO(22, 34, 51, 0.08),
                        blurRadius: 16,
                        offset: Offset(0, 8),
                        spreadRadius: -4)
                  ]),
              child: Row(
                children: [
                  SizedBox(
                    width: 195,
                    child: Text(
                      "Lets Find Specialist Doctor for Your Pet!",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          "assets/images/veterinary/doctor.png",
                          width: 76,
                          height: 67,
                          fit: BoxFit.cover,
                        )),
                  ),
                ],
              ),
            ),
            const SearchContainer(),
            CategoryServices(
              text: "Our Services",
              itemList: veterinaryList,
            ),
            Text(
              "Best Specialists Nearby",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 14),
            ),
            const Expanded(child: Specialist())
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
      floatingActionButton: const FloatingAction(text: "Cart"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
