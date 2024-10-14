import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/controller/onboard_controller.dart';
import 'package:travel_app/view/screens/LoginScreen/login_screen.dart';
import 'package:travel_app/view/widgets/custom_container.dart';
import 'dart:developer';

/// ONBOARD SCREEN CLASS - THE MAIN SCREEN FOR ONBOARDING USERS
class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = Get.width;
    final deviceHeight = Get.height;
    log("${deviceWidth * 0.015}");
    log("${deviceHeight * 0.008}");

    /// USING GET.FIND TO LOCATE THE ONBOARD CONTROLLER
    final onboardController = Get.find<OnboardController>();

    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: Obx(() {
          /// IF THE CURRENT INDEX IS LESS THAN THE LENGTH OF ONBOARD LIST, SHOW THE PAGEVIEW
          return onboardController.index <
                  onboardController.onboardModelList.length
              ? PageView.builder(
                  /// CONTROLLER THAT CONTROLS PAGE CHANGES
                  controller: onboardController.pageController,

                  /// UPDATING THE CURRENT PAGE INDEX ON PAGE CHANGE
                  onPageChanged: (newIndex) {
                    onboardController.index.value = newIndex;
                  },

                  /// NUMBER OF PAGES IN THE PAGEVIEW BASED ON ONBOARD MODEL LIST LENGTH
                  itemCount: onboardController.onboardModelList.length,

                  /// ITEM BUILDER FUNCTION FOR EACH PAGE
                  itemBuilder: (context, pageIndex) {
                    return Column(
                      children: [
                        Stack(
                          children: [
                            /// DISPLAYING THE IMAGE FROM THE ONBOARD MODEL
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  bottomLeft:
                                      Radius.circular(deviceWidth * 0.072),
                                  bottomRight:
                                      Radius.circular(deviceWidth * 0.072)),
                              child: Image.asset(
                                onboardController
                                    .onboardModelList[pageIndex].imgUrl,
                                height: deviceHeight / 1.72,
                                width: deviceWidth,
                                fit: BoxFit.cover,
                              ),
                            ),

                            /// 'SKIP' BUTTON TO SKIP THE ONBOARDING PAGES
                            Positioned(
                              top: deviceHeight * 0.044,
                              right: deviceWidth * 0.05,
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
                                      fontSize: deviceWidth * 0.044),
                                ),
                              ),
                            )
                          ],
                        ),

                        /// DISPLAYING THE TITLE AND DESCRIPTION OF THE CURRENT ONBOARD PAGE
                        Padding(
                          padding: EdgeInsets.all(deviceWidth * 0.072),
                          child: Column(
                            children: [
                              Text.rich(
                                textAlign: TextAlign.center,
                                TextSpan(children: [
                                  /// MAIN TITLE OF THE ONBOARD SCREEN
                                  TextSpan(
                                    text: onboardController
                                        .onboardModelList[pageIndex].title,
                                    style: GoogleFonts.aclonica(
                                        fontWeight: FontWeight.w400,
                                        color:
                                            const Color.fromRGBO(27, 30, 40, 1),
                                        fontSize: deviceWidth * 0.065),
                                  ),

                                  /// SECONDARY TITLE WITH A DIFFERENT COLOR
                                  TextSpan(
                                    text: onboardController
                                        .onboardModelList[pageIndex].titleLast,
                                    style: GoogleFonts.aclonica(
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromRGBO(
                                            255, 112, 41, 1),
                                        fontSize: deviceWidth * 0.065),
                                  )
                                ]),
                              ),
                              SizedBox(
                                height: deviceHeight * 0.011,
                              ),

                              /// DESCRIPTION TEXT FOR THE ONBOARD PAGE
                              Text(
                                onboardController
                                    .onboardModelList[pageIndex].description,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(125, 132, 141, 1),
                                    fontSize: deviceWidth * 0.04),
                              ),
                            ],
                          ),
                        ),

                        /// PAGE INDICATOR SHOWING CURRENT POSITION IN ONBOARDING PAGES
                        SmoothPageIndicator(
                          controller: onboardController.pageController,
                          count: onboardController.onboardModelList.length,
                          effect: ExpandingDotsEffect(
                            spacing: deviceWidth * 0.015,
                            radius: deviceWidth * 0.015,
                            dotHeight: deviceHeight * 0.008,
                            dotWidth: deviceWidth * 0.033,
                            dotColor: const Color.fromRGBO(202, 234, 255, 1),
                            activeDotColor:
                                const Color.fromRGBO(13, 110, 253, 1),
                          ),
                          onDotClicked: (newIndex) =>
                              onboardController.pageController.animateToPage(
                            newIndex,
                            duration: const Duration(milliseconds: 350),
                            curve: Curves.easeIn,
                          ),
                        ),
                        const Spacer(),

                        /// 'NEXT' BUTTON OR PROCEED BUTTON
                        Padding(
                          padding: EdgeInsets.all(deviceWidth * 0.05),
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
                                /// IF ON THE LAST PAGE, MOVE TO THE LOGIN SCREEN
                                onboardController.index.value =
                                    onboardController.onboardModelList.length;
                              }
                            },

                            /// [CustomContainer] CALLED FOR CONTAINER DECORATION AND BUTTON
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

              /// ONCE ONBOARDING IS DONE, NAVIGATE TO LOGIN SCREEN
              : const LoginScreen();
        }));
  }
}
