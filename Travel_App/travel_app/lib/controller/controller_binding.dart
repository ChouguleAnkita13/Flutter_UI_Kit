import 'package:get/get.dart';
import 'package:travel_app/controller/destination_controller.dart';
import 'package:travel_app/controller/onboard_controller.dart';

/// CLASS THAT IMPLEMENTS THE BINDINGS FOR DEPENDENCY INJECTION

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    /// INSTANTIATING ONBOARDCONTROLLER FOR ONBOARDPAGES MANAGEMENT
    Get.put(OnboardController());

    ///INITIALIZING DESTINATIONCONTROLLER FOR DESTINATION FUNCTIONALITY
    Get.put(DestinationController());
  }
}
