import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/controller/onboard_controller.dart';
import 'package:travel_app/view/screens/LoginScreen/login_screen.dart';
import 'package:travel_app/view/widgets/custom_container.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///USING GET.FIND LOCATES THE CONTROLLER THAT WAS CREATED
    final onboardController = Get.find<OnboardController>();
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: Obx(() {
          return onboardController.index <
                  onboardController.onboardModelList.length
              ? PageView.builder(
                  controller: onboardController.pageController,
                  onPageChanged: (newIndex) {
                    onboardController.index.value = newIndex;
                  },
                  itemCount: onboardController.onboardModelList.length,
                  itemBuilder: (context, pageIndex) {
                    return Column(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30)),
                              child: Image.asset(
                                onboardController
                                    .onboardModelList[pageIndex].imgUrl,
                                height: Get.height / 1.6,
                                width: Get.width,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 40,
                              right: 20,
                              child: GestureDetector(
                                onTap: () {
                                  onboardController.index.value =
                                      onboardController.onboardModelList.length;
                                },
                                child: Text(
                                  "Skip",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(
                                          202, 234, 255, 1),
                                      fontSize: 18),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            children: [
                              Text.rich(
                                textAlign: TextAlign.center,
                                TextSpan(children: [
                                  TextSpan(
                                    text: onboardController
                                        .onboardModelList[pageIndex].title,
                                    style: GoogleFonts.aclonica(
                                        fontWeight: FontWeight.w400,
                                        color:
                                            const Color.fromRGBO(27, 30, 40, 1),
                                        fontSize: 26),
                                  ),
                                  TextSpan(
                                    text: onboardController
                                        .onboardModelList[pageIndex].titleLast,
                                    style: GoogleFonts.aclonica(
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromRGBO(
                                            255, 112, 41, 1),
                                        fontSize: 26),
                                  )
                                ]),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                onboardController
                                    .onboardModelList[pageIndex].description,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(125, 132, 141, 1),
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        SmoothPageIndicator(
                          controller: onboardController.pageController,
                          count: onboardController.onboardModelList.length,
                          effect: const ExpandingDotsEffect(
                            spacing: 6.0,
                            radius: 6.0,
                            dotHeight: 7,
                            dotWidth: 14,
                            dotColor: Color.fromRGBO(202, 234, 255, 1),
                            activeDotColor: Color.fromRGBO(13, 110, 253, 1),
                          ),
                          onDotClicked: (newIndex) =>
                              onboardController.pageController.animateToPage(
                            newIndex,
                            duration: const Duration(milliseconds: 350),
                            curve: Curves.easeIn,
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: GestureDetector(
                            onTap: () {
                              if (onboardController.index <
                                  onboardController.onboardModelList.length -
                                      1) {
                                onboardController.pageController.nextPage(
                                  duration: const Duration(milliseconds: 350),
                                  curve: Curves.easeIn,
                                );
                              } else {
                                onboardController.index.value =
                                    onboardController.onboardModelList.length;
                              }
                            },

                            ///[CustomContainer] CALLED FOR CONTAINER DECORATION
                            child: CustomContainer(
                              title: onboardController
                                  .onboardModelList[pageIndex].btnName,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                )
              : const LoginScreen();
        }));
  }
}
