import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/view/screens/LoginScreen/Widgets/email_textfield.dart';
import 'package:travel_app/view/screens/LoginScreen/Widgets/name_textfield.dart';
import 'package:travel_app/view/screens/LoginScreen/Widgets/or_connect.dart';
import 'package:travel_app/view/screens/LoginScreen/Widgets/password_textfield.dart';
import 'package:travel_app/view/screens/LoginScreen/Widgets/sign_text.dart';
import 'package:travel_app/view/screens/LoginScreen/login_screen.dart';
import 'package:travel_app/view/widgets/custom_container.dart';

///WIDGET TO DISPLAY SIGN UP SCREEN
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey();
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 50),
          child: SizedBox(
            height: Get.height / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ///SIGN UP NOW TEXT WITH CONTENT
                const SignText(
                    title: "Sign up now",
                    content: "Please fill the details and create account"),

                Form(
                    key: formKey,
                    child: SizedBox(
                      height: Get.height / 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///NAME TEXTFIELD
                          const NameTextfield(),

                          ///EMAIL TEXTFIELD
                          const EmailTextfield(),

                          ///PASSWORD TEXTFIELD
                          const PasswordTextfield(),

                          GestureDetector(
                              onTap: () {
                                Get.to(const LoginScreen());
                              },

                              ///[CustomContainer] CALLED FOR CONTAINER DECORATION
                              child: const CustomContainer(title: "Sign Up")),
                        ],
                      ),
                    )),

                ///OR CONNECT WITH WIDGET
                const OrConnect()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
