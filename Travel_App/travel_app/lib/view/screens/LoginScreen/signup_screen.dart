import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/screens/LoginScreen/login_screen.dart';
import 'package:travel_app/view/widgets/custom_container.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

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
                        "Sign up now",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(27, 30, 40, 1),
                            fontSize: 26),
                      ),
                      Text(
                        "Please fill the details and create account",
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
                            controller: _nameController,
                            cursorColor: const Color.fromRGBO(27, 30, 40, 1),
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(27, 30, 40, 1),
                                fontSize: 16),
                            decoration: InputDecoration(
                                filled: true,
                                fillColor:
                                    const Color.fromRGBO(247, 247, 249, 1),
                                hintText: "Enter your name",
                                hintStyle: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(125, 132, 141, 1),
                                    fontSize: 16),
                                border: InputBorder.none),
                          ),
                          //Email TextField
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

                          //PassWord TextField

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

                          GestureDetector(
                              onTap: () {
                                Get.to(const LoginScreen());
                              },

                              ///[CustomContainer] CALLED FOR CONTAINER DECORATION
                              child: const CustomContainer(title: "Sign Up")),
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
                    Image.asset("assets/images/twitter.png"),
                    Image.asset("assets/images/insta.png"),
                    Image.asset("assets/images/facebook.png"),
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
