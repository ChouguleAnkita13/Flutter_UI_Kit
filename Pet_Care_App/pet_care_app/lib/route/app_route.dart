import 'package:flutter/material.dart';
import 'package:pet_care_app/view/login.dart';
import 'package:pet_care_app/view/splash_screen.dart';


Widget initialScreen=const SplashScreen();
Map<String,Widget Function(BuildContext)> appRoutes={
  "/login":(context)=> const LoginScreen(),

};