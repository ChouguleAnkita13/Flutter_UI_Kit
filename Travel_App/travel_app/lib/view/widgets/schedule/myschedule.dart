import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/model/destinationmodel.dart';

class Myschedule extends StatelessWidget {
  const Myschedule({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: destinationList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){},
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Row(
                children: [
                //Images
                  ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        destinationList[index].imgUrl,
                        height: 80,
                        fit: BoxFit.cover,
                        width: 80,
                      )),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    //Date
                      Row(
                        children: [
                          Image.asset("assets/icons/calender.png",
                              height: 16, width: 16),
                          const SizedBox(width: 4),
                          Text(
                            " 26 January 2022",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(125, 132, 141, 1),
                                fontSize: 13),
                          ),
                        ],
                      ),
                      //Title
                      const SizedBox(height: 4),
                      Text(
                        destinationList[index].title,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(27, 30, 40, 1),
                            fontSize: 16),
                      ),
                      const SizedBox(height: 4),
                      //Location
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            color: Color.fromRGBO(125, 132, 141, 1),
                            size: 15,
                          ),
                          const SizedBox(width: 2),
                          Text(
                            destinationList[index].location,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(125, 132, 141, 1),
                                fontSize: 13),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //Forward Arrow icon
                  const Spacer(),
                  const Icon(Icons.arrow_forward_ios,
                      color: Color.fromRGBO(125, 132, 141, 1), size: 13)
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 15));
  }
}
