import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/items/itemlists.dart';
import 'package:pet_care_app/view/widgets/search_container.dart';

class GroomingScreen extends StatelessWidget {
  const GroomingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 0.03),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width / 1.7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("/dashboard");
                  },
                  child: Container(
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromRGBO(245, 146, 69, 1),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Color.fromRGBO(255, 255, 255, 1),
                        size: 13,
                      )),
                ),
                Text(
                  "Grooming",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(31, 32, 41, 1),
                      fontSize: 16),
                ),
              ],
            ),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 195,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "60% OFF",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 24),
                      ),
                       Text(
                        "On hair & spa treatment",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Expanded(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "assets/images/grooming/image.png",
                        width: 76,
                        height: 67,
                      )),
                ),
              ],
            ),
          ),
          const SearchContainer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Our Services",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 14),
              ),
              Text(
                "See All",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(194, 195, 204, 1),
                    fontSize: 12),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemCount: groomingList.length,
                itemBuilder: ((context, index) {
                  return Container(
                    width: 154,
                    padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              groomingList[index]["imgUrl"],
                              width: 122,
                              height: 101,
                              fit: BoxFit.cover,
                            )),
                        Expanded(
                          child: Text(
                            groomingList[index]["title"],
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  );
                })),
          ),
        ]),
      ),
    );
  }
}
