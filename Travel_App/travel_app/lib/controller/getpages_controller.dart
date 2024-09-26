import 'package:get/get.dart';
import 'package:travel_app/view/screens/DetailsScreen/details_screen.dart';
import 'package:travel_app/view/screens/LoginScreen/login_screen.dart';
import 'package:travel_app/view/screens/LoginScreen/signup_screen.dart';
import 'package:travel_app/view/screens/ViewScreen/view_screen.dart';
import 'package:travel_app/view/screens/customnavbar_screen.dart';
import 'package:travel_app/view/screens/onboard_screen.dart';
import 'package:travel_app/view/screens/splash_screen.dart';

/// APPLICATION ROUTES AND THEIR ASSOCIATED SCREENS
class GetpagesController {
  static List<GetPage<dynamic>> getPagesList = [
    GetPage(name: "/", page: () => const SplashScreen()),
    GetPage(name: "/onboard", page: () => const OnboardScreen()),
    GetPage(name: "/login", page: () => const LoginScreen()),
    GetPage(name: "/signup", page: () => const SignUpScreen()),
    GetPage(name: "/navbar", page: () => const CustomNavBarScreen()),
    GetPage(name: "/details", page: () => const DetailsScreen()),
    GetPage(name: "/view", page: () => const ViewScreen()),
  ];
}
