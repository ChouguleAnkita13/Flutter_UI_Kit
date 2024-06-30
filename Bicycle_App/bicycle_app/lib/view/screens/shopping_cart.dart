import 'package:bicycle_app/view/widgets/cart.dart';
import 'package:flutter/material.dart';
import 'package:bicycle_app/theme/app_theme.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key, required this.bicyleMap});
  final Map bicyleMap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(34, 40, 52, 1),
              Color.fromRGBO(0, 0, 0, 0.9)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.5, 0.5],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Text(
                          "My Shopping Cart",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        const Spacer(),
                        Container(
                          height: 45,
                          width: 45,
                          decoration: AppTheme.smallContDecoration,
                          child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: const Icon(Icons.arrow_back_ios_sharp)),
                        ),
                      ],
                    ),
                  ),
                  RotatedBox(
                    quarterTurns: 1,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.width,
                      child: Text(
                        "EXTREME",
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(
                                color:
                                    const Color.fromRGBO(255, 255, 255, 0.08)),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                  top: 40,
                  child: Column(
                    children: [
                      Cart(
                          img: bicyleMap["img"],
                          name: bicyleMap["name"],
                          price: bicyleMap["price"]),
                      Cart(
                          img: bicyleMap["img"],
                          name: bicyleMap["name"],
                          price: bicyleMap["price"]),
                      Cart(
                          img: bicyleMap["img"],
                          name: bicyleMap["name"],
                          price: bicyleMap["price"]),
                    ],
                  ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: const Color.fromRGBO(0, 0, 0, 0.9),
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 25,
              height: 25,
              alignment: Alignment.center,
              decoration: AppTheme.smallContDecoration
                  .copyWith(borderRadius: BorderRadius.circular(5)),
              child: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 21,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text("Check Out",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 18, color: AppTheme.textColor)),
          ],
        ),
      ),
    );
  }
}
