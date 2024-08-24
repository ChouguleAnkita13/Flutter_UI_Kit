import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PlantImageScroll extends StatelessWidget {
  PlantImageScroll({super.key});
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height / 2,
          child: PageView.builder(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, snapshot) {
                return Image.asset(
                  "assets/images/snakePlant.png",
                  height: MediaQuery.sizeOf(context).height / 2,
                  width: MediaQuery.sizeOf(context).width,
                  fit: BoxFit.contain,
                );
              }),
        ),
        //SmoothPageIndicator to scroll the plant images with indicator
        SmoothPageIndicator(
          controller: _controller,
          count: 3,
          axisDirection: Axis.horizontal,
          effect: const SlideEffect(
            spacing: 8.0,
            dotWidth: 8,
            dotHeight: 8,
            dotColor: Color.fromRGBO(197, 214, 181, 1),
            activeDotColor: Color.fromRGBO(62, 102, 24, 1),
          ),
          onDotClicked: (index) {
            _controller.animateToPage(index,
                duration: const Duration(milliseconds: 350),
                curve: Curves.easeIn);
          },
        ),
      ],
    );
  }
}
