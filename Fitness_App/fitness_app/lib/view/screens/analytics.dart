import 'package:fitness_app/view/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

import '../widgets/activity/calender.dart';
import '../widgets/activity/cycling.dart';
import '../widgets/activity/health_rate.dart';
import '../widgets/activity/sleep_water.dart';

class Analytics extends StatelessWidget {
  const Analytics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Calendar(),
            Text(
              "Today Report",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20,top: 15),
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height / 1.52,
                child: ListView(
                  children: const [
                    Cycling(),
                    SizedBox(height: 15),
                    HealthRate(),
                    SizedBox(height: 15),
                    SleepWater()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(
        selectedIndex: 2,
      ),
    );
  }
}
