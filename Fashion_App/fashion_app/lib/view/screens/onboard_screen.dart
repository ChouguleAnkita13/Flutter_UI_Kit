import 'package:fashion_app/theme/app_theme.dart';
import 'package:fashion_app/view/screens/bottom_navigation.dart';
import 'package:flutter/material.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ClipRRect(
            borderRadius:const BorderRadius.only(bottomLeft:Radius.circular(30),bottomRight:Radius.circular(30)),
            child: Image.asset(
              "assets/images/onboard.png",
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height / 1.7,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Find The",
                    style: Theme.of(context).textTheme.displayLarge),
                Text("Best Collections",
                    style: Theme.of(context).textTheme.displayLarge),
                const SizedBox(
                  height: 10,
                ),
                Text(
                    "Get your dream item easily with FashionHub and get other intersting offer",
                    style: Theme.of(context).textTheme.labelMedium),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 15),
                        decoration: AppTheme.conDecor.copyWith(
                            color: Colors.white,
                            border: Border.all(color: AppTheme.primaryColor)),
                        child: Text("Sign Up",
                            style: Theme.of(context).textTheme.bodyLarge),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CustomBottomNavigation()));
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 15),
                        decoration: AppTheme.conDecor,
                        child: Text("Sign In",
                            style: Theme.of(context).textTheme.bodyMedium),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
