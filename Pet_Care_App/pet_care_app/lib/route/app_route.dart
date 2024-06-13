import 'package:flutter/material.dart';
import 'package:pet_care_app/view/screens/dashboard.dart';
import 'package:pet_care_app/view/screens/grooming_screen.dart';
import 'package:pet_care_app/view/screens/login.dart';
import 'package:pet_care_app/view/screens/notification_screen.dart';
import 'package:pet_care_app/view/screens/splash_screen.dart';
import 'package:pet_care_app/view/screens/training_screen.dart';
import 'package:pet_care_app/view/screens/veterinary_page.dart';


Widget initialScreen=const SplashScreen();
Map<String,Widget Function(BuildContext)> appRoutes={
  "/login":(context)=> const LoginScreen(),
  "/dashboard":(context)=> const Dashboard(),
  "/notification":(context)=>NotificationScreen(),
  "/veterinary":(context)=> const VeterinaryPage(),
  "/training":(context)=> const TrainingScreen(),
  "/grooming":(context)=> const GroomingScreen(),
};