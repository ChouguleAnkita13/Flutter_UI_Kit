import 'package:bicycle_app/view/screens/shopping_cart.dart';
import 'package:flutter/material.dart';
import 'package:bicycle_app/theme/app_theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({super.key, required this.bicyleMap});
  final Map bicyleMap;

  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: AppTheme.primaryGradient,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Text(
                          bicyleMap["name"],
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const Spacer(),
                        Container(
                          height: 45,
                          width: 45,
                          decoration: AppTheme.smallContDecoration,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.of(context).pop();
                            },
                            child: const Icon(Icons.arrow_back_ios_sharp)),
                        ),
                      ],
                    ),
                  ),
                  RotatedBox(
                    quarterTurns: 1,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.width,
                      child: Text(
                        "EXTREME",
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(
                                color:
                                    const Color.fromRGBO(255, 255, 255, 0.08)),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                  top: 70,
                  child: Column(
                    children: [
                      Transform.translate(
                          offset: const Offset(-10, 0),
                          child: Image.asset(
                            bicyleMap["img"],
                            height: 380,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          )),
                      SmoothPageIndicator(
                        controller: controller,
                        count: 3,
                        effect: const SlideEffect(
                            spacing: 5.0,
                            dotWidth: 10.0,
                            dotHeight: 10.0,
                            strokeWidth: 1.5,
                            dotColor: Color.fromRGBO(217, 217, 217, 1),
                            activeDotColor: Color.fromRGBO(0, 0, 0, 1)),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 2.5,
                        margin: const EdgeInsets.only(top: 40),
                        decoration: AppTheme.contDecoration1.copyWith(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 120,
                                    height: 35,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 0.5)),
                                      color:
                                          const Color.fromRGBO(36, 44, 59, 1),
                                    ),
                                    child: Text(
                                      "Description",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(color: AppTheme.textColor),
                                    ),
                                  ),
                                  Container(
                                    width: 120,
                                    height: 35,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 0.5)),
                                      color:
                                          const Color.fromRGBO(72, 92, 236, 1),
                                    ),
                                    child: Text(
                                      "Specification",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(color: AppTheme.textColor),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              SingleChildScrollView(
                                child: SizedBox(
                                  height: 150,
                                  child: Text(
                                    bicyleMap["description"],
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                            fontSize: 13,
                                            color: AppTheme.textColor),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            color: Color.fromRGBO(53, 63, 84, 1),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.4),
                  offset: Offset(0, -8),
                  blurRadius: 20)
            ]),
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("\$ ${bicyleMap["price"]}",
                style: Theme.of(context).textTheme.titleLarge),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: ((context) => ShoppingCart(bicyleMap:bicyleMap))));
              },
              child: Container(
                width: 180,
                height: 45,
                alignment: Alignment.center,
                decoration: AppTheme.smallContDecoration
                    .copyWith(borderRadius: BorderRadius.circular(20)),
                child: Text("Buy Now",
                    style: Theme.of(context).textTheme.titleLarge),
              ),
            )
          ],
        ),
      ),
    );
  }
}
