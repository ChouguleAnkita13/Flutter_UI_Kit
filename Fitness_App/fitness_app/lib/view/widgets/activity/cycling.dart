import 'package:fitness_app/theme/app_theme.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:flutter/material.dart';

class Cycling extends StatelessWidget {
  const Cycling({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Column(
            children: [
              Container(
                height: 70,
                width: 112,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: const Color.fromRGBO(25, 33, 38, 0.1)),
                    color: const Color.fromRGBO(250, 251, 249, 1)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Active calories",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: AppTheme.textColorLight),
                    ),
                    Text(
                      "645 Cal",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 122,
                width: 112,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: const Color.fromRGBO(25, 33, 38, 0.1)),
                    color: const Color.fromRGBO(234, 236, 255, 1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Training time",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    CircularPercentIndicator(
                      radius: 30,
                      lineWidth: 8.0,
                      percent: 0.80,
                      animation: true,
                      animationDuration: 1200,
                      center: Text(
                        "80%",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      reverse: true,
                      arcType: ArcType.FULL_REVERSED,
                      arcBackgroundColor: AppTheme.textColor,
                      progressColor: const Color.fromRGBO(164, 138, 237, 1),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 218,
            width: 212,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppTheme.primaryColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: AppTheme.textColor,
                      ),
                      child: Image.asset("assets/images/analytics/cycle.png"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Cycling",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: AppTheme.textColor),
                    ),
                  ],
                ),
                Image.asset("assets/images/analytics/Map.png")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
