import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: const CircleAvatar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        child: Icon(
          Icons.notifications_none_rounded,
          size: 25,
        ),
      ),
    );
  }
}
