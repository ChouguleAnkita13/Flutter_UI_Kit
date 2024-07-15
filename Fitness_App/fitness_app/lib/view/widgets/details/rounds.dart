import 'package:fitness_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

List roundsList = [
  {
    "imgUrl": "assets/images/details/jumping.png",
    "plan": "Jumping Jacks",
    "time": "00:30"
  },
  {
    "imgUrl": "assets/images/details/squats.png",
    "plan": "Squats",
    "time": "01:00"
  },
  {
    "imgUrl": "assets/images/details/backward.png",
    "plan": "Backward Lunge",
    "time": "00:30"
  }
];

class Rounds extends StatelessWidget {
  const Rounds({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: roundsList.length,
        itemBuilder: ((context, index) {
          return Container(
            margin: const EdgeInsets.only(top: 15),
            padding: const EdgeInsets.only(
                bottom: 7, top: 7, left: 7, right: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromRGBO(56, 64, 70, 1)),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    roundsList[index]["imgUrl"],
                    height: 58,
                    width: 58,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        roundsList[index]["plan"],
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: AppTheme.textColor),
                      ),
                      Text(
                        roundsList[index]["time"],
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(
                                color: const Color.fromRGBO(
                                    255, 255, 255, 0.5),
                                fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  height: 28,
                  width: 28,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: AppTheme.primaryColor),
                  child: const Icon(Icons.play_arrow_sharp,
                      color: AppTheme.primaryLightColor, size: 12),
                )
              ],
            ),
          );
        }));
  }
}
