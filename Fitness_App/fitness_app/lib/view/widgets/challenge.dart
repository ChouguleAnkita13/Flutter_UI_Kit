import 'package:flutter/material.dart';
import 'package:fitness_app/theme/app_theme.dart';

class Challenge extends StatelessWidget {
  const Challenge({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Challenge",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              Stack(
                children: [
                  Container(
                    width: 110,
                    height: 110,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: AppTheme.primaryLightColor,
                    ),
                    child: Image.asset(
                      "assets/images/explore/fire.png",
                      height: 72,
                      width: 72,
                    ),
                  ),
                  Positioned(
                      bottom: 20,
                      left: 10,
                      child: SizedBox(
                        width: 67,
                        child: Text(
                          "Plank Challenge",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ))
                ],
              ),
              const SizedBox(width: 15),
              Stack(
                children: [
                  Container(
                    width: 110,
                    height: 110,
                    padding: const EdgeInsets.all(5),
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: AppTheme.primaryColor,
                    ),
                    child: Image.asset(
                      "assets/images/explore/ball.png",
                      height: 72,
                      width: 72,
                    ),
                  ),
                  Positioned(
                      bottom: 20,
                      left: 10,
                      child: SizedBox(
                        width: 67,
                        child: Text(
                          "Sprint Challenge",
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(color: AppTheme.textColor),
                        ),
                      ))
                ],
              ),
              const SizedBox(width: 15),
              Stack(
                children: [
                  Container(
                    width: 110,
                    height: 110,
                    padding: const EdgeInsets.all(5),
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: AppTheme.textColor,
                    ),
                    child: Image.asset(
                      "assets/images/explore/pyramid.png",
                      height: 72,
                      width: 72,
                    ),
                  ),
                  Positioned(
                      bottom: 20,
                      left: 10,
                      child: SizedBox(
                        width: 67,
                        child: Text(
                          "Squat Challenge",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
