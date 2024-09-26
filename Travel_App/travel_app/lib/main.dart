import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:travel_app/controller/controller_binding.dart';
import 'package:travel_app/controller/getpages_controller.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      /// SETTING THE INITIAL ROUTE OF THE APP
      initialRoute: "/",

      /// REGISTERING ALL APPLICATION ROUTES AND THEIR ASSOCIATED SCREENS
      getPages: GetpagesController.getPagesList,

      /// BINDING ALL NECESSARY CONTROLLERS WHEN THE APP STARTS

      initialBinding: ControllerBinding(),

      /// DISABLE DEBUG BANNER IN THE TOP RIGHT CORNER
      debugShowCheckedModeBanner: false,
    );
  }
}
