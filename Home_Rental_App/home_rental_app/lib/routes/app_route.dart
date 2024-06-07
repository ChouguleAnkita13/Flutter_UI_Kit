import 'package:flutter/material.dart';
import 'package:home_rental_app/view/details_page.dart';
import 'package:home_rental_app/view/get_started.dart';
import 'package:home_rental_app/view/home_screen.dart';

Widget initialScreen=const GetStarted();
Map<String,Widget Function(BuildContext)> appRoute={
  "home":(context)=>const HomeScreen(),
  "details":(context)=>const DetailsPage(),

};