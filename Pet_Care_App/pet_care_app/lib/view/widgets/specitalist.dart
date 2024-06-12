import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/items/itemlists.dart';

class Specialist extends StatelessWidget {
  const Specialist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: doctorList.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.only(top: 15, bottom: 18),
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
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      doctorList[index].imgUrl,
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    )),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                                            doctorList[index].name,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 14),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                                            doctorList[index].behavior,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(194, 195, 204, 1),
                          fontSize: 12),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      const Icon(Icons.star_border,
                  color:  Color.fromRGBO(245, 146, 69, 1),
                  size: 16,
                      ),
                      Text(
                      "${doctorList[index].rate}",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(194, 195, 204, 1),
                          fontSize: 12),
                    ),
                    const SizedBox(width: 20,),
                     const Icon(
                  Icons.location_on_outlined,
                  color: Color.fromRGBO(245, 146, 69, 1),
                  size: 16,
                ),
                 Text(
                      "${doctorList[index].distance} km",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(194, 195, 204, 1),
                          fontSize: 12),
                    ),
                    ],)
                  ],
                ),
              ],
            ),
          );
        });
  }
}
