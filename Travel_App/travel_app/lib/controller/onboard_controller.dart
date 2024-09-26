import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/model/onboardmodel.dart';

///GETX CONTROLLER FOR ONBOARD SCREEN
class OnboardController extends GetxController {
  ///PAGE CONTROLLER
  final PageController pageController = PageController();

  ///INDEX VAIABLE TO CHANGE VALUE OF VARIBLE .OBS USED
  final index = 0.obs;

  ///LIST OF ONBOARDMODELS
  final List<OnboardModel> onboardModelList = [
    const OnboardModel(
        imgUrl: "assets/images/onboard1.png",
        title: "Life is short and the world is",
        titleLast: " wide",
        description:
            "At Friends tours and travel, we customize reliable and trut worthy educational tours to destinations",
        btnName: "Get Started"),
    const OnboardModel(
        imgUrl: "assets/images/onboard2.png",
        title: "It’s a big world out there go",
        titleLast: " explore",
        description:
            "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
        btnName: "Next"),
    const OnboardModel(
        imgUrl: "assets/images/onboard3.png",
        title: "People don’t take trips, trips take",
        titleLast: " people",
        description:
            "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
        btnName: "Next"),
  ];
}
