import 'package:flutter/material.dart';
import 'package:bicycle_app/theme/app_theme.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          padding: const EdgeInsets.only(
            top: 30,
          ),
          child: Stack(
            children: [
              Column(
               children: [
                Container(
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text(
                          "Choose Your Bicycle",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 45,
                        width: 45,
                        decoration: AppTheme.contDecoration,
                        child: const Icon(Icons.circle_outlined),
                      )
                    ],
                  ),
                ),
                RotatedBox(
                  quarterTurns: 1,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.width,
                    child: Text(
                      "EXTREME",
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          color: const Color.fromRGBO(255, 255, 255, 0.08)),
                    ),
                  ),
                ),
              ]),
              Positioned(
                  top: 90,
                left: 0,
                right: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 234,
                    padding: const EdgeInsets.only(top: 2,bottom: 2,right: 1),

                          margin: const EdgeInsets.only(
                            bottom: 40
                          ),
                          decoration: AppTheme.contDecoration1,
                          child: Row(
                            children: [
                              Image.asset("assets/images/off.png",width: 230,),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "EXTREME",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge!
                                          .copyWith(
                                              fontSize: 32,
                                              color: AppTheme.textColor),
                                    ),
                                          const Spacer(),
                                                        
                                    Text(
                                      "30% OFF",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(
                                              fontSize: 32,
                                              fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
