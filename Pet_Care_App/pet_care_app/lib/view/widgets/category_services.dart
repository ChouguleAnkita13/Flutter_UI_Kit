import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryServices extends StatelessWidget {
  const CategoryServices(
      {super.key, required this.text, required this.itemList});
  final String text;
  final List itemList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 14),
            ),
            Text(
              "See All",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(194, 195, 204, 1),
                  fontSize: 12),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 95,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: itemList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed("/${itemList[index].title.toLowerCase()}");
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 26, bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            itemList[index].img,
                            height: 54,
                            width: 54,
                          ),
                        ),
                        Text(
                          itemList[index].title,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: text != "Our Services"
                                  ? const Color.fromRGBO(0, 0, 0, 1)
                                  : const Color.fromRGBO(245, 146, 69, 1),
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
