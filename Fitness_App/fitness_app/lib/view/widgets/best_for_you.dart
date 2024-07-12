import 'package:fitness_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

List bestForYouList = [
  {
    "imgUrl": "assets/images/explore/belly.png",
    "plan": "Belly fat burner",
    "time": "10 Min",
    "status": "Beginner",
  },
  {
    "imgUrl": "assets/images/explore/fat.png",
    "plan": "Lose Fat",
    "time": "10 Min",
    "status": "Beginner",
  },
  {
    "imgUrl": "assets/images/explore/plank.png",
    "plan": "Plank",
    "time": "5 Min",
    "status": "Expert",
  },
  {
    "imgUrl": "assets/images/explore/backward.png",
    "plan": "Build Whider",
    "time": "30 Min",
    "status": "Intermediate",
  },
];

class BestForYou extends StatelessWidget {
  const BestForYou({super.key});

  Container bestForYouContainer(int index, BuildContext context) {
    return Container(
      width: 205,
      margin: const EdgeInsets.only(top: 15, right: 15),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: AppTheme.textColor,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              bestForYouList[index]["imgUrl"],
              height: 72,
              width: 72,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bestForYouList[index]["plan"],
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const Spacer(),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: const Color.fromRGBO(241, 241, 241, 1)),
                  child: Text(
                    bestForYouList[index]["time"],
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(fontSize: 12),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: const Color.fromRGBO(241, 241, 241, 1)),
                  child: Text(
                    bestForYouList[index]["status"],
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(fontSize: 12),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Best for you",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              bestForYouContainer(0, context),
              bestForYouContainer(1, context)
            ],
          ),
        ),
          SizedBox(
            height: 104,
            child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              bestForYouContainer(2, context),
              bestForYouContainer(3, context)
            ],
                     ),
          ),
      ],
    );
  }
}
