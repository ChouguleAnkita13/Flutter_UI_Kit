import 'package:fitness_app/view/widgets/details/rounds.dart';
import 'package:fitness_app/view/widgets/details/workout.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/theme/app_theme.dart';

class WorkoutDetail extends StatelessWidget {
  const WorkoutDetail(
      {super.key,
      required this.title,
      required this.kcal,
      required this.time,
      required this.imgUrl});
  final String title;
  final String kcal;
  final String time;
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width / 1.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(Icons.arrow_back_ios_rounded)),
                Text(
                  "Workout",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: AppTheme.textColor),
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
          Workout(title: title, kcal: kcal, time: time, imgUrl: imgUrl),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Rounds",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 20)),
              Text(
                "1/8",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: AppTheme.textColor),
              )
            ],
          ),
          const SizedBox(height: 10),
          const Expanded(child: Rounds())
        ]),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Container(
          height: 56,
          width: MediaQuery.sizeOf(context).width - 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: AppTheme.primaryLightColor,
              borderRadius: BorderRadius.circular(32)),
          child: Text(
            "Lets Workout",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
