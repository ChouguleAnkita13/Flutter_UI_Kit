import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/items/itemlists.dart';

class TrainingScreen extends StatelessWidget {
  const TrainingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 0.04),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width / 1.6,
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
                  "Training",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(31, 32, 41, 1),
                      fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount:trainingList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.only(bottom: 15),
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
                                trainingList[index]["imgUrl"],
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
                              SizedBox(
                                width: 190,
                                child: Text(
                                  trainingList[index]["course"],
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      color: const Color.fromRGBO(0, 0, 0, 1),
                                      fontSize: 14),
                                ),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                trainingList[index]["author"],
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(0, 0, 0, 1),
                                    fontSize: 12),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star_border,
                                    color: Color.fromRGBO(245, 146, 69, 1),
                                    size: 16,
                                  ),
                                  Text(
                                    " ${trainingList[index]["rate"]}  ",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        color: const Color.fromRGBO(
                                            194, 195, 204, 1),
                                        fontSize: 12),
                                  ),
                                 
                                  
                                  Text(
                                    "(${trainingList[index]["rate"]})",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        color: const Color.fromRGBO(
                                            194, 195, 204, 1),
                                        fontSize: 12),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  }))
        ]),
      ),
    );
  }
}
