import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/models/category_model.dart';

class Category extends StatelessWidget {
  Category({super.key});

  final List<CategoryModel> categoriesList = [
    const CategoryModel(
        img: "assets/images/dashboard/category/veterinary.png",
        title: "Veterinary"),
    const CategoryModel(
        img: "assets/images/dashboard/category/grooming.png",
        title: "Grooming"),
    const CategoryModel(
        img: "assets/images/dashboard/category/petstore.png",
        title: "Pet Store"),
    const CategoryModel(
        img: "assets/images/dashboard/category/training.png",
        title: "Training"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Category",
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
              itemCount: categoriesList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap:() {
                    Navigator.of(context).pushNamed("/${categoriesList[index].title.toLowerCase()}");
                  },
                  child: Container(
                    margin:const EdgeInsets.only(right: 26,bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            categoriesList[index].img,
                            height: 54,
                            width: 54,
                          ),
                        ),
                        Text(
                          categoriesList[index].title,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(0, 0, 0, 1),
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
