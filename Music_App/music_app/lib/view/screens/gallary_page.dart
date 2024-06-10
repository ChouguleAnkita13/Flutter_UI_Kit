import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/model/music_model.dart';
import 'package:music_app/view/screens/music_payer.dart';
import 'package:music_app/view/widget/bottomnavigation.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Gallary extends StatefulWidget {
  const Gallary({super.key});

  @override
  State<Gallary> createState() => _GallaryState();
}

class _GallaryState extends State<Gallary> {
  final List<MusicModel> musicModelList = [
    const MusicModel(
        name: "Dead inside",
        img: "assets/images/song1.png",
        year: 2020,
        type: "Easy Living",
        time: 4),
    const MusicModel(
        name: "Alone",
        img: "assets/images/song2.png",
        year: 2023,
        type: "Easy Living",
        time: 4),
    const MusicModel(
        name: "Heartless",
        img: "assets/images/song3.png",
        year: 2023,
        type: "Berrechid",
        time: 4),
    const MusicModel(
        name: "Smile",
        img: "assets/images/song5.png",
        year: 2023,
        type: "Berrechid",
        time: 4),
    const MusicModel(
        name: "We Are Chaos",
        img: "assets/images/song4.png",
        year: 2023,
        type: "Easy Living",
        time: 4)
  ];
  late List<MusicModel> reversedList = musicModelList.reversed.toList();

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/images/gallary.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                    bottom: 30,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "A.L.O.N.E",
                          style: GoogleFonts.inter(
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Gallary()));
                          },
                          child: Container(
                            height: 37,
                            width: 127,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromRGBO(255, 46, 0, 1),
                            ),
                            child: Text(
                              "Subscribe",
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(19, 19, 19, 1),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
            Expanded(
                child: Container(
              color: const Color.fromRGBO(19, 19, 19, 0.9),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    SmoothPageIndicator(
                        controller: _pageController, // PageController
                        count: 3,
                        effect: const ExpandingDotsEffect(
                          spacing: 8.0,
                          radius: 4.0,
                          dotWidth: 8.0,
                          dotHeight: 8.0,
                          paintStyle: PaintingStyle.fill,
                          strokeWidth: 2,
                          dotColor: Color.fromRGBO(203, 200, 200, 1),
                          activeDotColor: Color.fromRGBO(255, 46, 0, 1),
                        ),
                        onDotClicked: (index) {}),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Discography",
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(255, 46, 0, 1),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "See all",
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(248, 162, 69, 1),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 177,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: musicModelList.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => MusicPlayer(
                                        music: musicModelList[index])));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        musicModelList[index].img,
                                        height: 140,
                                        width: 119,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      musicModelList[index].name,
                                      style: GoogleFonts.inter(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: const Color.fromRGBO(
                                            203, 200, 200, 1),
                                      ),
                                    ),
                                    Text(
                                      "${musicModelList[index].year}",
                                      style: GoogleFonts.inter(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: const Color.fromRGBO(
                                            132, 125, 125, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          "Popular singles",
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(203, 200, 200, 1),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "See all",
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(248, 162, 69, 1),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: reversedList.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => MusicPlayer(
                                        music: reversedList[index])));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 12),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        reversedList[index].img,
                                        height: 72,
                                        width: 67,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          reversedList[index].name,
                                          style: GoogleFonts.inter(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: const Color.fromRGBO(
                                                  203, 200, 200, 1)),
                                        ),
                                        const SizedBox(height: 3),
                                        SizedBox(
                                          width: 95,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "${reversedList[index].year}",
                                                style: GoogleFonts.inter(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w400,
                                                    color: const Color.fromRGBO(
                                                        132, 125, 125, 1)),
                                              ),
                                              const Icon(Icons.star,
                                                  size: 7,
                                                  color: Color.fromRGBO(
                                                      203, 200, 200, 1)),
                                              Text(
                                                reversedList[index].type,
                                                style: GoogleFonts.inter(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromRGBO(
                                                      132, 125, 125, 1),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    const Icon(Icons.more_vert_outlined,
                                        size: 30,
                                        color:
                                            Color.fromRGBO(203, 200, 200, 1)),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
        bottomNavigationBar: const BottomNavigation());
  }
}
