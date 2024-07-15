import 'package:fitness_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Workout extends StatelessWidget {
  const Workout(
      {super.key, required this.title, required this.kcal, required this.time});
  final String title;
  final String kcal;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(23),
          child: Image.asset(
            "assets/images/popular.png",
            height: 230,
            width: MediaQuery.sizeOf(context).width,
            fit: BoxFit.cover,
          ),
        ),
        Transform.translate(
            offset: const Offset(0, -30),
            child: Container(
              height: 54,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromRGBO(25, 33, 38, 0.3),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 32,
                    width: 82,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppTheme.primaryLightColor),
                          child: const Icon(
                            Icons.timer_sharp,
                            size: 24,
                            color: AppTheme.primaryColor,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Time",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                            ),
                            Text(
                              time,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      fontSize: 12,
                                      color: AppTheme.primaryLightColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 35,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromRGBO(255, 255, 255, 0.25))),
                  ),
                  SizedBox(
                    height: 32,
                    width: 90,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppTheme.primaryLightColor),
                          child: Image.asset(
                            "assets/images/fire.png",
                            height: 30,
                            width: 30,
                            color: AppTheme.primaryColor,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Burn",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                            ),
                            Text(
                              kcal,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      fontSize: 12,
                                      color: AppTheme.primaryLightColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          child: SizedBox(
            height: 88,
            child: Text("The lower abdomen and hips are the most difficult areas of the body to reduce when we are on a diet. Even so, in this area, especially the legs as a whole, you can reduce weight even if you don't use tools.",
             style: Theme.of(context).textTheme.labelLarge!.copyWith(color: const Color.fromRGBO(255, 255, 255, 0.5))),
          ),
        ),
      ],
    );
  }
}
