import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:music_app/view/screens/gallary_page.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: double.infinity,
      child: Stack(
        children: [
          Image.asset(
            "assets/images/home.png",
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
              bottom: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(19, 19, 19, 0.0),
                          Color.fromRGBO(19, 19, 19, 0.98),
                          Color.fromRGBO(19, 19, 19, 1)
                        ],
                        stops: [0.1, 0.2, 0.8],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 325,
                          padding: const EdgeInsets.only(left: 5, right: 10),
                          child: Text(
                            "Dancing between The shadows Of rhythm ",
                            style: GoogleFonts.inter(
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder:(context)=>const Gallary() ));
                          },
                          child: Container(
                            height: 47,
                            width: 261,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromRGBO(255, 46, 0, 1),
                            ),
                            child: Text(
                              "Get started",
                              style: GoogleFonts.inter(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(19, 19, 19, 1),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 47,
                            width: 261,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: const Color.fromRGBO(255, 46, 0, 1),
                              ),
                            ),
                            child: Text(
                              "Continue with Email",
                              style: GoogleFonts.inter(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(255, 46, 0, 1),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 261,
                          child: Text(
                            "by continuing you agree to terms of services and  Privacy policy                           ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(203, 200, 200, 0.6),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    ));
  }
}
