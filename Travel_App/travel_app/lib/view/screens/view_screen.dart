import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/widgets/view/destination_container.dart';
import 'package:travel_app/view/widgets/view/view_container.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Stack(
        children: [
          Image.asset(Get.arguments["viewImg"],height: double.infinity,width:double.infinity,fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.only(right: 25,bottom: 30,top: 50,left: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               SizedBox(
                width: Get.width/2,
                 child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => Get.back(),
                          child: CircleAvatar(
                            backgroundColor: const Color.fromRGBO(27, 30, 40, 1)
                                .withOpacity(0.16),
                            child: const Icon(
                              Icons.arrow_back_ios_new,
                              color: Color.fromRGBO(255, 255, 255, 1),
                              size: 15,
                            ),
                          ),
                        ),
                        Text(
                          "View",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 18),
                        ),
                       
                      ],
                    ),
               ),
               const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [ViewContainer(title: "La-Hotel",img: "assets/images/details/d5.png")],
               ),
                const Row(
                children: [ViewContainer(title: "Lemon Garden",img: "assets/images/details/d2.png")],
               ),
              DestinationContainer(destination: Get.arguments["destination"])
            ],),
          )
        ],
      )
    );
  }
}