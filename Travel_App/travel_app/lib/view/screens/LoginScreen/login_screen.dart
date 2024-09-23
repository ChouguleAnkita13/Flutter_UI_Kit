import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/screens/customnavbar_screen.dart';
import 'package:travel_app/view/screens/LoginScreen/signup_screen.dart';
import 'package:travel_app/view/widgets/custom_container.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey();

  bool _isPasswordVisiable = true;

  @override
  Widget build(BuildContext context) {
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
                SizedBox(
                  height: Get.height / 9.99,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Sign in now",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(27, 30, 40, 1),
                            fontSize: 26),
                      ),
                      Text(
                        "Please sign in to continue our app",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(125, 132, 141, 1),
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Form(
                    key: _formKey,
                    child: SizedBox(
                      height: Get.height / 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextFormField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: const Color.fromRGBO(27, 30, 40, 1),
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(27, 30, 40, 1),
                                fontSize: 16),
                            decoration: InputDecoration(
                                filled: true,
                                fillColor:
                                    const Color.fromRGBO(247, 247, 249, 1),
                                hintText: "Enter your email",
                                hintStyle: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(125, 132, 141, 1),
                                    fontSize: 16),
                                border: InputBorder.none),
                          ),
                          TextFormField(
                            controller: _passwordController,
                            cursorColor: const Color.fromRGBO(27, 30, 40, 1),
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(27, 30, 40, 1),
                                fontSize: 16),
                            obscureText: _isPasswordVisiable,
                            obscuringCharacter: "*",
                            decoration: InputDecoration(
                                filled: true,
                                fillColor:
                                    const Color.fromRGBO(247, 247, 249, 1),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _isPasswordVisiable =
                                          !_isPasswordVisiable;
                                    });
                                  },
                                  child: Icon(
                                    _isPasswordVisiable
                                        ? Icons.visibility_off_outlined
                                        : Icons.visibility_outlined,
                                    size: 24,
                                    color:
                                        const Color.fromRGBO(125, 132, 141, 1),
                                  ),
                                ),
                                hintText: "Enter your password",
                                hintStyle: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(125, 132, 141, 1),
                                    fontSize: 16),
                                border: InputBorder.none),
                          ),
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
                              Get.offAll(const CustomNavBarScreen());
                            },

                            ///[CustomContainer] CALLED FOR CONTAINER DECORATION
                            child: const CustomContainer(title: "Sign In"),
                          ),
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
                                Get.to(const SignUpScreen());
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
                Text(
                  "Or connect",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(112, 123, 129, 1),
                      fontSize: 14),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/facebook.png"),
                    Image.asset("assets/images/insta.png"),
                    Image.asset("assets/images/twitter.png"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
