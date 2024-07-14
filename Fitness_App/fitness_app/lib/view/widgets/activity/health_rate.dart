import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HealthRate extends StatelessWidget {
  const HealthRate({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            height: 167,
            width: 199,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromRGBO(255, 235, 235, 1)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: const Color.fromRGBO(249, 185, 185, 1),
                      ),
                      width: 28,
                      height: 28,
                      child: Image.asset("assets/images/analytics/rate.png"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("Hearth Rate",
                        style: Theme.of(context).textTheme.titleMedium),
                  ],
                ),
                Image.asset("assets/images/analytics/health.png")
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Container(
                height: 100,
                width: 135,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromRGBO(255, 232, 198, 1)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: const Color.fromRGBO(248, 211, 157, 1),
                          ),
                          width: 28,
                          height: 28,
                          child:
                              Image.asset("assets/images/analytics/steps.png"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text("Steps",
                            style: Theme.of(context).textTheme.titleMedium),
                      ],
                    ),
                    const Spacer(),
                    Text("999/2000",
                        style: Theme.of(context).textTheme.bodySmall),
                    LinearPercentIndicator(
                        lineHeight: 12.0,
                        percent: 0.5,
                        animation: true,
                        animationDuration: 1200,
                        backgroundColor: const Color.fromRGBO(255, 232, 198, 1),
                        barRadius: const Radius.circular(25),
                        progressColor: const Color.fromRGBO(252, 196, 111, 1)),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 51,
                width: 135,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromRGBO(246, 207, 207, 1)),
                child: Text(
                  "Keep it Up! 💪",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
