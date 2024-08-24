import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_app/view/DetailsScreen/Widgets/plant_details_container.dart';
import 'package:plant_app/view/DetailsScreen/Widgets/plant_image_scroll.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Backword arrow
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 30),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(
                Icons.arrow_back,
                color: Color.fromRGBO(62, 102, 24, 1),
                size: 24,
              ),
            ),
          ),
        //Plant Image scroll 
        PlantImageScroll(),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Snake Plants",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width/1.2,
                    child: Text(
                      "Plansts make your life with minimal and happy love the plants more and enjoy life.",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Color.fromRGBO(48, 48, 48, 1),
                              fontSize: 13,
                              fontWeight: FontWeight.w400)),
                    ),
                  ),
                  // To Display details of plant ,PlantDetailsContainer() called
                  const PlantDetailsContainer()
                  ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
