import 'package:fitness_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

List planList=[
  {
    "imgUrl":"assets/images/push_up.png",
    "plan":"Push Up",
    "content":"100 Push up a day",
    "status":"Intermediate",
    "percent":45,
  },
   {
    "imgUrl":"assets/images/sit.png",
    "plan":"Sit Up",
    "content":"20 Sit up a day",
    "status":"Beginner",
    "percent":75,
  },
  {
    "imgUrl":"assets/images/knee_push.png",
    "plan":"Knee Push Up",
    "content":"40 Knee Push Up a day",
    "status":"Beginner",
    "percent":65,
  }
];
class TodayPlan extends StatelessWidget {
  const TodayPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: planList.length,
        itemBuilder: ((context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 20, top: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23),
              color: AppTheme.textColor,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 81,
                      height: 19,
                      margin: const EdgeInsets.only(right: 15),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: AppTheme.primaryColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(6),
                              bottomRight: Radius.circular(6))),
                      child: Text(
                        planList[index]["status"],
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: AppTheme.textColor),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 5, bottom: 5, right: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          planList[index]["imgUrl"],
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              planList[index]["plan"],
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            Text(
                              planList[index]["content"],
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(fontSize: 14),
                            ),
                            LinearPercentIndicator(
                                lineHeight: 16.0,
                                percent: planList[index]["percent"]/100,
                                animation: true,
                                animationDuration: 1000,
                                padding: const EdgeInsets.only(right: 10),
                                backgroundColor:
                                    const Color.fromRGBO(242, 242, 242, 1),
                                barRadius: const Radius.circular(3),
                                center: Text("${planList[index]["percent"]} %",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(fontSize: 11)),
                                progressColor: AppTheme.primaryLightColor),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        }));
  }
}
