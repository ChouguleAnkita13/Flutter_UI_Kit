import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/screens/LoginScreen/Widgets/email_textfield.dart';
import 'package:travel_app/view/screens/LoginScreen/Widgets/or_connect.dart';
import 'package:travel_app/view/screens/LoginScreen/Widgets/password_textfield.dart';
import 'package:travel_app/view/screens/LoginScreen/Widgets/sign_text.dart';
import 'package:travel_app/view/widgets/custom_container.dart';

///WIDGET TO DISPLAY LOGIN SCREEN
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey();

    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 50),
          child: SizedBox(
            height: Get.height / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ///SIGN IN NOW TEXT WITH CONTENT
                const SignText(
                    title: "Sign in now",
                    content: "Please sign in to continue our app"),

                ///FORM
                Form(
                    key: formKey,
                    child: SizedBox(
                      height: Get.height / 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///EMAIL TEXTFIELD
                          const EmailTextfield(),

                          ///PASSWORD TEXTFIELD
                          const PasswordTextfield(),

                          ///FORGOT PASSWORD
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Forgot password?",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(13, 110, 253, 1),
                                    fontSize: 14),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.offAllNamed("/navbar");
                            },

                            ///[CustomContainer] CALLED FOR CONTAINER DECORATION
                            child: const CustomContainer(title: "Sign In"),
                          ),

                          ///TEXTSPAN TO CREATE ACCOUNT
                          Text.rich(TextSpan(children: [
                            TextSpan(
                              text: "Don’t have an account?",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(112, 123, 129, 1),
                                  fontSize: 14),
                            ),
                            WidgetSpan(
                                child: GestureDetector(
                              onTap: () {
                                Get.toNamed("/signup");
                              },
                              child: Text(
                                "  Sign up",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(13, 110, 253, 1),
                                    fontSize: 14),
                              ),
                            ))
                          ])),
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
