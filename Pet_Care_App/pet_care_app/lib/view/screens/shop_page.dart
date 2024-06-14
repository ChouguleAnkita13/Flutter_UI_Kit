import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/items/itemlists.dart';
import 'package:pet_care_app/view/widgets/bottomnavigation.dart';
import 'package:pet_care_app/view/widgets/floatingaction.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 0.03),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(32),
              bottomRight: Radius.circular(32)),
        ),
        backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
        title: Padding(
          padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello Ankita",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 14),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    "Find your lovable Pets",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 16),
                  ),
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.shopping_cart_outlined,
                color: Color.fromRGBO(255, 255, 255, 1),
                size: 26,
              ),
            ],
          ),
        ),
        bottom: PreferredSize(
            preferredSize:
                const Size.fromHeight(60.0), // Set the desired height
            child: Container()),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
            ),
            itemCount: shopList.length,
            itemBuilder: ((context, index) {
              return Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                            color: const Color.fromRGBO(245, 146, 69, 1),
                            width: 8),
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromRGBO(22, 34, 51, 0.08),
                              blurRadius: 16,
                              offset: Offset(0, 8),
                              spreadRadius: -4)
                        ]),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          shopList[index]["imgUrl"],
                          width: 160,
                          fit: BoxFit.cover,
                        )),
                  ),
                  Positioned(
                    top: 20,
                    child: Container(
                      width: 105,
                      height: 30,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(245, 245, 247, 1),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                          )),
                      child: Text(
                        shopList[index]["title"],
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(245, 146, 69, 1),
                            fontSize: 12),
                      ),
                    ),
                  ),
                ],
              );
            })),
      ),
        bottomNavigationBar: const BottomNavigation(),
      floatingActionButton: const FloatingAction(text: "Shop"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
