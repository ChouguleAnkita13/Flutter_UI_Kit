import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/model/onboardmodel.dart';
import 'package:travel_app/view/screens/login_screen.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final _controller = PageController();

  int index=0;
  @override
  void dispose() {
    _controller.dispose();
    log("dispose pageController");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: index < onboardModelList.length
          ? PageView.builder(
              controller: _controller,
              onPageChanged: (newIndex) {
                index = newIndex;
              },
              itemCount: onboardModelList.length,
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
                            onboardModelList[pageIndex].imgUrl,
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
                            index=onboardModelList.length;
                            setState(() {
                              
                            });
                            },
                            child: Text(
                              "Skip",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(202, 234, 255, 1),
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
                                text: onboardModelList[pageIndex].title,
                                style: GoogleFonts.aclonica(
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromRGBO(27, 30, 40, 1),
                                    fontSize: 26),
                              ),
                              TextSpan(
                                text: onboardModelList[pageIndex].titleLast,
                                style: GoogleFonts.aclonica(
                                    fontWeight: FontWeight.w500,
                                    color:
                                        const Color.fromRGBO(255, 112, 41, 1),
                                    fontSize: 26),
                              )
                            ]),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            onboardModelList[pageIndex].description,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(125, 132, 141, 1),
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    SmoothPageIndicator(
                      controller: _controller,
                      count: onboardModelList.length,
                      effect: const ExpandingDotsEffect(
                        spacing: 6.0,
                        radius: 6.0,
                        dotHeight: 7,
                        dotWidth: 14,
                        dotColor: Color.fromRGBO(202, 234, 255, 1),
                        activeDotColor: Color.fromRGBO(13, 110, 253, 1),
                      ),
                      onDotClicked: (newIndex) => _controller.animateToPage(
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
                          if (index < onboardModelList.length - 1) {
                            _controller.nextPage(
                              duration: const Duration(milliseconds: 350),
                              curve: Curves.easeIn,
                            );
                          } else {
                            index = onboardModelList.length;
                            setState(() {
                              
                            });
                          }
                        },
                        child: Container(
                          height: 56,
                          width: Get.width,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(13, 110, 253, 1),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Text(
                            onboardModelList[pageIndex].btnName,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            )
          : const LoginScreen()
    );
  }
}
