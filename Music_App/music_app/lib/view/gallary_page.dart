import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/model/music_model.dart';

class Gallary extends StatefulWidget {
  const Gallary({super.key});

  @override
  State<Gallary> createState() => _GallaryState();
}

class _GallaryState extends State<Gallary> {
  int _selectedIndex=0;
  final List<MusicModel> musicModelList = [
    const MusicModel(
        name: "Dead inside",
        img: "assets/images/song1.png",
        year: 2020,
        type: "Easy Living",time: 4),
    const MusicModel(
        name: "Alone",
        img: "assets/images/song2.png",
        year: 2023,
        type: "Easy Living",time: 4),
    const MusicModel(
        name: "Heartless",
        img: "assets/images/song3.png",
        year: 2023,
        type: "Berrechid",time: 4),
    const MusicModel(
        name: "Smile",
        img: "assets/images/song5.png",
        year: 2023,
        type: "Berrechid",time: 4),
    const MusicModel(
        name: "We Are Chaos",
        img: "assets/images/song4.png",
        year: 2023,
        type: "Easy Living",time: 4)
  ];
  late List<MusicModel> reversedList = musicModelList.reversed.toList();

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
                          return Container(
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
                                    color:
                                        const Color.fromRGBO(203, 200, 200, 1),
                                  ),
                                ),
                                Text(
                                  "${musicModelList[index].year}",
                                  style: GoogleFonts.inter(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color:
                                        const Color.fromRGBO(132, 125, 125, 1),
                                  ),
                                ),
                              ],
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
                    // height: 150,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: reversedList.length,
                        itemBuilder: (context, index) {
                          return Container(
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    color: Color.fromRGBO(203, 200, 200, 1)),
                              ],
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 26,
        unselectedItemColor: const Color.fromRGBO(157, 178, 206, 1),
        backgroundColor: const Color.fromRGBO(19, 19, 19, 0.9),
        selectedItemColor: const Color.fromRGBO(230, 154, 21, 1),
        items:const [
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.delete_outline_outlined), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_rounded), label: "Profile"),
        ],
        currentIndex: _selectedIndex,
        onTap: (index){
           setState(() {
      _selectedIndex = index;
    });
        },
      ),
    );
  }
}
