import 'package:get/get.dart';

class OnboardController extends GetxController{
  final index=0.obs;

  updateIndex(int idx){
    index.value=idx;
    update();
  }
}