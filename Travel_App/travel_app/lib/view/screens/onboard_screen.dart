import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/model/onboardmodel.dart';

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
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/onboard3.png"),
                  const SizedBox(height: 30),
                  Text(
                    "Let’s get started!",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(34, 31, 31, 1),
                        fontSize: 22),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Login to Stay healthy and fit",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(34, 31, 31, 0.6),
                        fontSize: 16),
                  ),
                  const SizedBox(height: 35),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/login");
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(250, 56),
                      backgroundColor: const Color.fromRGBO(64, 124, 226, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                        side: const BorderSide(
                          color: Color.fromRGBO(64, 124, 226, 1),
                        ),
                      ),
                    ),
                    child: Text(
                      "Login",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/signup");
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(250, 56),
                      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                        side: const BorderSide(
                          color: Color.fromRGBO(64, 124, 226, 1),
                        ),
                      ),
                    ),
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(64, 124, 226, 1),
                          fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
