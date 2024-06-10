import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/model/music_model.dart';
import 'package:music_app/view/widget/bottomnavigation.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({super.key, required this.music});

  final MusicModel music;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                music.img,
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height / 1.5,
                fit: BoxFit.cover,
              ),
              Positioned(
                  bottom: 0,
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: Column(
                      children: [
                        Text(
                          "${music.name} in the Abyss",
                          style: GoogleFonts.inter(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(230, 154, 21, 1),
                          ),
                        ),
                        Text(
                          "Youlakou",
                          style: GoogleFonts.inter(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.ios_share_rounded,
                                  size: 25,
                                  color: Color.fromRGBO(230, 154, 21, 1)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
          Expanded(
              child: Container(
                  color: const Color.fromRGBO(19, 19, 19, 1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          children: [
                            Text(
                              "Dynamic Warmup | ",
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              "${music.time} min",
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      LinearPercentIndicator(
                        width: MediaQuery.sizeOf(context).width,
                        lineHeight: 8.0,
                        percent: 0.3,
                        barRadius: const Radius.circular(15),
                        backgroundColor:
                            const Color.fromRGBO(217, 217, 217, 0.19),
                        progressColor: const Color.fromRGBO(230, 154, 21, 1),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/images/Vector.png",
                              height: 20,
                              width: 20,
                                color: const Color.fromRGBO(255, 255, 255, 1)
                            ),
                            Image.asset(
                              "assets/images/previous.png",
                              height: 25,
                              width: 25,
                            ),
                            const Icon(Icons.play_circle_fill_outlined,
                                size: 50,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                            Image.asset(
                              "assets/images/next.png",
                              height: 25,
                              width: 25,
                            ),
                            const Icon(Icons.volume_down_rounded,
                                size: 28,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                          ],
                        ),
                      )
                    ],
                  )))
        ],
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
