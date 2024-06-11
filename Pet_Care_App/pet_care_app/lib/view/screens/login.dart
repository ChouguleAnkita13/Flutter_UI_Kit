import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _labelController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey();

  bool _isPasswordVisiable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 25, right: 25, bottom: 10),
          child: Column(
            children: [
              Text(
                "Login",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(245, 146, 69, 1),
                    fontSize: 32),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset("assets/images/logo.png"),
              Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Email",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(194, 195, 204, 1),
                            fontSize: 13),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          border: Border.all(
                              color: const Color.fromRGBO(250, 200, 162, 1),
                              width: 2),
                        ),
                        margin: const EdgeInsets.only(top: 5, bottom: 10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 8),
                        height: 40,
                        child: TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: const Color.fromRGBO(250, 200, 162, 1),
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(194, 195, 204, 1),
                              fontSize: 12),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Text(
                        "Label",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(194, 195, 204, 1),
                            fontSize: 13),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 8),
                        margin: const EdgeInsets.only(top: 5, bottom: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          border: Border.all(
                              color: const Color.fromRGBO(250, 200, 162, 1),
                              width: 2),
                        ),
                        height: 40,
                        child: TextFormField(
                          controller: _labelController,
                          cursorColor: const Color.fromRGBO(250, 200, 162, 1),
                          obscureText: _isPasswordVisiable,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(194, 195, 204, 1),
                              fontSize: 12),
                          decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _isPasswordVisiable = !_isPasswordVisiable;
                                });
                              },
                              child: Icon(
                                _isPasswordVisiable
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined,
                                size: 24,
                                color: const Color.fromRGBO(245, 146, 69, 1),
                              ),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Center(
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                            text: "Forgot Password ?",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(31, 32, 41, 1),
                                fontSize: 13),
                          ),
                          WidgetSpan(
                              child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Click Here",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(31, 32, 41, 1),
                                  fontSize: 13),
                            ),
                          ))
                        ])),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("/dashboard");
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(MediaQuery.sizeOf(context).width, 38),
                          backgroundColor:
                              const Color.fromRGBO(245, 146, 69, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          "LOGIN",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 15),
                        ),
                      ),
                    ],
                  )),
              Container(
                margin: const EdgeInsets.only(top: 25, bottom: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color.fromRGBO(245, 146, 69, 1),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 38,
                  width: MediaQuery.sizeOf(context).width,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromRGBO(245, 146, 69, 1),
                  ),
                  child: Text(
                    "LOGIN WITH EMAIL",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 14),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 38,
                  margin: const EdgeInsets.only(bottom: 40),
                  width: MediaQuery.sizeOf(context).width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(245, 146, 69, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "LOGIN WITH FACEBOOK",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 16),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                width: 200,
                child: Text(
                  "By continue you agree to our Terms & Privacy Policy",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(31, 32, 41, 1),
                      fontSize: 13),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
