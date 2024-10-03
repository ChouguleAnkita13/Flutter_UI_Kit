import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/controller/destination_controller.dart';
import 'package:travel_app/view/screens/ViewScreen/Widgets/destination_container.dart';
import 'package:travel_app/view/screens/ViewScreen/Widgets/view_container.dart';

///WIDGET TO DISPLAY VIEWSCREEN FOR VIEWS OF DESTINATION
class ViewScreen extends StatelessWidget {
  const ViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///GET SELECTEDDESTINATION USING DESTINATION GETX CONTROLLER
    final selectedDestination =
        Get.find<DestinationController>().selectedDestination;

    /// CHECK IF SELECTEDDESTINATION IS NULL
    if (selectedDestination == null) {
      return Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () => Get.toNamed("/navbar"),
            child: const Text(
              'No view selected.',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      );
    }
    return Scaffold(
        body: Stack(
      children: [
        ///VIEW IMAGE COVERS FULL SCREEN
        Image.asset(Get.arguments,
            height: double.infinity, width: double.infinity, fit: BoxFit.cover),
        Padding(
          padding:
              const EdgeInsets.only(right: 25, bottom: 30, top: 50, left: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: Get.width / 2,

                ///ROW CONTAINING BACK BUTTON AND VIEW TEXT
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ///BACK BUTTON
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

              ///
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ///CONTAINER ON SCREEN
                  ViewContainer(
                      title: "La-Hotel", img: "assets/images/details/d5.png")
                ],
              ),
              const Row(
                children: [
                  ///CONTAINER ON SCREEN
                  ViewContainer(
                      title: "Lemon Garden",
                      img: "assets/images/details/d2.png")
                ],
              ),

              ///[ DestinationContainer()] TO SHOW DETAILS OF DESTIONATION
              const DestinationContainer()
            ],
          ),
        )
      ],
    ));
  }
}
