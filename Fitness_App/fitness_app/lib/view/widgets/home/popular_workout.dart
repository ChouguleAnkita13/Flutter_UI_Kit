import 'package:fitness_app/view/screens/workout_detail.dart';
import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';

class PopularWorkout extends StatelessWidget {
  const PopularWorkout(
      {super.key, required this.title, required this.kcal, required this.time});
  final String title;
  final String kcal;
  final String time;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => WorkoutDetail(
                  title: title,
                  kcal: kcal,
                  time: time,
                )));
      },
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(23),
          child: Image.asset(
            "assets/images/popular.png",
            height: 174,
            width: 280,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            child: Container(
          width: 280,
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
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 128,
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  Container(
                    height: 26,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: const Color.fromRGBO(255, 255, 255, 0.8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/images/fire.png",
                          height: 14,
                          width: 14,
                        ),
                        Text(
                          kcal,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 26,
                    width: 72,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: const Color.fromRGBO(255, 255, 255, 0.8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.timer_sharp,
                          size: 14,
                          color: AppTheme.primaryColor,
                        ),
                        Text(
                          time,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              const Icon(Icons.play_circle,
                  color: AppTheme.primaryLightColor, size: 38)
            ],
          ),
        ))
      ]),
    );
  }
}
