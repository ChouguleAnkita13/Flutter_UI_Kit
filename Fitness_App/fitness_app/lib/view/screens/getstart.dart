import 'package:fitness_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class GetStart extends StatelessWidget {
  const GetStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/images/getstart.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height / 1.5,
          ),
          SizedBox(
            width: 260,
            child: Text(
              "Wherever You Are Health Is Number One",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          Text(
            "There is no instant way to a healthy life",
            style: Theme.of(context).textTheme.labelLarge,
          ),
          SizedBox(
            width: 75,
            child: LinearPercentIndicator(
              lineHeight: 5.0,
              percent: 0.4,
              backgroundColor:AppTheme.primaryColor,
              barRadius: const Radius.circular(5),
              progressColor:AppTheme.primaryLightColor

            
            ),
          ),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed("/home");
        },
        child: Container(
          height: 56,
          width: MediaQuery.sizeOf(context).width - 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: AppTheme.primaryColor,
              borderRadius: BorderRadius.circular(32)),
          child: Text(
            "Get Started",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}
