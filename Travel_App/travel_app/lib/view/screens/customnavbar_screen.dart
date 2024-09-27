import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:travel_app/controller/navbar_controller.dart';

/// WIDGET TO DISPLAY CUSTOM NAVIGATIONBAR WITH SHAPE
class CustomNavBarScreen extends StatelessWidget {
  const CustomNavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      /// INITIALIZE GETX NAVBARCONTROLLER
      init: NavbarController(),
      builder: (navbarController) => Scaffold(
        body: navbarController.widgetOptions
            .elementAt(navbarController.selectedIndex),

        /// CUSTOM BOTTOM NAVIGATION BAR WITH ROUNDED CORNERS AND SHADOW
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            items: [
              const BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/home.png")),
                label: "Home",
              ),
              const BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/calender.png")),
                label: "Calendar",
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  height: 56,
                  width: 56,
                  child: CircleAvatar(
                    backgroundColor: const Color.fromRGBO(13, 110, 253, 1),
                    child: Image.asset("assets/icons/search.png"),
                  ),
                ),
                label: "",
              ),
              const BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/chat.png")),
                label: "Messages",
              ),
              const BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/person.png")),
                label: "Profile",
              ),
            ],
            selectedItemColor: const Color.fromRGBO(13, 110, 253, 1),
            unselectedItemColor: const Color.fromRGBO(125, 132, 141, 1),
            backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
            type: BottomNavigationBarType.fixed,
            currentIndex: navbarController.selectedIndex,
            onTap: navbarController.onItemTapped,
          ),
        ),
      ),
    );
  }
}
