import 'package:fitness_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

List fastWarmupList = [
  {
    "imgUrl": "assets/images/explore/leg.png",
    "plan": "Leg excercises",
    "time": "10 min",
    "status": "Beginner",
  },
  {
    "imgUrl": "assets/images/explore/lun.png",
    "plan": "Backward lunges",
    "time": "5 min",
    "status": "Beginner",
  },
 
];

class FastWarmUp extends StatelessWidget {
  const FastWarmUp({super.key});

  Container fastWarmUpContainer(int index, BuildContext context) {
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
              fastWarmupList[index]["imgUrl"],
              height: 66,
              width: 66,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fastWarmupList[index]["plan"],
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
                    fastWarmupList[index]["time"],
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
                    fastWarmupList[index]["status"],
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
          "Fast Warmup",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              fastWarmUpContainer(0, context),
              fastWarmUpContainer(1, context)
            ],
          ),
        ),
        
      ],
    );
  }
}
