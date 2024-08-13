import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Detailsbar extends StatelessWidget {
  const Detailsbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Get.back(),
                        child: CircleAvatar(
                          backgroundColor: const Color.fromRGBO(27, 30, 40, 1)
                              .withOpacity(0.16),
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            size: 15,
                          ),
                        ),
                      ),
                      Text(
                        "Details",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 18),
                      ),
                      GestureDetector(
                        child: CircleAvatar(
                          backgroundColor: const Color.fromRGBO(27, 30, 40, 1)
                              .withOpacity(0.16),
                          child: const Icon(
                            Icons.bookmark_outline,
                            color: Color.fromRGBO(255, 255, 255, 1),
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  )
                  ;
  }
}