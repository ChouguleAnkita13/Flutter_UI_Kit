import 'package:fitness_app/theme/app_theme.dart';
import 'package:fitness_app/view/widgets/bottom_navigation.dart';
import 'package:fitness_app/view/widgets/home/popular_workout.dart';
import 'package:fitness_app/view/widgets/home/today_plan.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 0.03),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good Morning 🔥",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Text(
              "Ankita Chougule",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppTheme.textColor,
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: Theme.of(context).textTheme.labelLarge,
                    prefixIcon: const Icon(Icons.search_rounded),
                    prefixIconColor: AppTheme.textColorLight,
                    border: InputBorder.none),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Popular Workouts",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: 10,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PopularWorkout(
                    title: "Lower Body Training",
                    kcal: "500 Kcal",
                    time: "50 min",
                  ),
                  SizedBox(width: 20),
                  PopularWorkout(
                    title: "Hand Training",
                    kcal: "600 Kcal",
                    time: "40 min",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Today Plan",
              style: Theme.of(context).textTheme.titleMedium,
            ),
           const Expanded(
              child: TodayPlan(),
             )     ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(selectedIndex: 0,),
    );
  }
}
