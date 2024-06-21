import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStart extends StatelessWidget {
  const GetStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color.fromRGBO(53, 63, 84, 1),
                Color.fromRGBO(75, 76, 237, 1),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.5, 0.5]),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Stack(
            children: [
              Column(
                children: [
                  Image.asset("assets/images/image1.png"),
                  Transform.rotate(
                      angle: 1.5708,
                      child: Text(
                        "EXTREME",
                        style: GoogleFonts.poppins(
                            fontSize: 150,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(255, 255, 255, 0.5)),
                      )),
                  Container(
                    width: 315,
                    height: 75,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(36, 44, 59, 1),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(38),
                            topRight: Radius.circular(38))),
                    child: Row(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: const Color.fromRGBO(75, 76, 237, 1),
                              border: Border.all(
                                  color: const Color.fromRGBO(239, 186, 51, 1),
                                  width: 5)),
                          child: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            size: 30,
                          ),
                        ),
                        Text(
                          "Get Start",
                          style: GoogleFonts.poppins(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                  top: 280, child: Image.asset("assets/images/pngwing.png"))
            ],
          ),
        ),
      ),
    );
  }
}
