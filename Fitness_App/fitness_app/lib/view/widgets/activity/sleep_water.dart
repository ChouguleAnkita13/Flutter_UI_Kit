import 'package:flutter/material.dart';

class SleepWater extends StatelessWidget {
  const SleepWater({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            height: 128,
            width: 178,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromRGBO(239, 226, 255, 1)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: const Color.fromRGBO(214, 187, 248, 1),
                      ),
                      width: 28,
                      height: 28,
                      child: Image.asset("assets/images/analytics/moon.png"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("Sleep",
                        style: Theme.of(context).textTheme.titleMedium),
                  ],
                ),
                const Spacer(),
                Image.asset("assets/images/analytics/sleep.png")
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 128,
            width: 156,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromRGBO(216, 230, 236, 1)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: const Color.fromRGBO(174, 209, 224, 1),
                      ),
                      width: 28,
                      height: 28,
                      child: Image.asset("assets/images/analytics/drop.png"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("Water",
                        style: Theme.of(context).textTheme.titleMedium),
                  ],
                ),
                const Spacer(),
                Image.asset("assets/images/analytics/water.png")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
