import 'package:fitness_app/theme/app_theme.dart';
import 'package:fitness_app/view/widgets/explore/best_for_you.dart';
import 'package:fitness_app/view/widgets/bottom_navigation.dart';
import 'package:fitness_app/view/widgets/explore/challenge.dart';
import 'package:fitness_app/view/widgets/explore/fast_warmup.dart';
import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 0.95),
      body: Padding(
          padding: const EdgeInsets.only(left: 20, top: 30),
          child: Column(
            children: [
              Stack(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.only(right: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(23),
                    child: Image.asset(
                      "assets/images/explore/explore.png",
                      height: 174,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    child: Container(
                  height: 174,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(0, 0, 0, 0.51),
                          Color.fromRGBO(0, 0, 0, 0)
                        ],
                      )),
                  child: SizedBox(
                    width: 210,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Best Quarantine Workout",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Row(
                          children: [
                            Text(
                              "See more",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(color: AppTheme.primaryLightColor),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(Icons.arrow_forward_ios,
                                color: AppTheme.primaryLightColor, size: 12)
                          ],
                        )
                      ],
                    ),
                  ),
                ))
              ]),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView(
                  children: const [
                    BestForYou(),
                    SizedBox(
                      height: 10,
                    ),
                    Challenge(),
                    SizedBox(
                      height: 10,
                    ),
                    FastWarmUp()
                  ],
                ),
              )
            ],
          )),
      bottomNavigationBar: const BottomNavigation(
        selectedIndex: 1,
      ),
    );
  }
}
