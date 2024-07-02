import 'package:bicycle_app/view/screens/home_screen.dart';
import 'package:bicycle_app/view/widgets/cart.dart';
import 'package:flutter/material.dart';
import 'package:bicycle_app/theme/app_theme.dart';
import 'package:intl/intl.dart';
import '../widgets/total.dart';

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
                    const Cart(
                        img: "assets/images/cartHelmet.png",
                        name: "Helmet",
                        price: 125.99),
                    const Cart(
                        img: "assets/images/cartBottle.png",
                        name: "Bottle",
                        price: 115.99),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Your Bag Qualifies for Free Shipping",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(fontWeight: FontWeight.w300)),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: AppTheme.contDecoration1
                          .copyWith(borderRadius: BorderRadius.circular(10)),
                      height: 50,
                      width: MediaQuery.of(context).size.width - 30,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("6Affg5",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      fontSize: 22,
                                      color: AppTheme.textColorLight
                                          .withOpacity(0.7))),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 137,
                              height: 42,
                              alignment: Alignment.center,
                              decoration: AppTheme.smallContDecoration.copyWith(
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text("Apply",
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      child: SizedBox(
                        height: 150,
                        width: MediaQuery.of(context).size.width - 30,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Total(
                                title: "Subtotal",
                                value:
                                    "\$${NumberFormat('#,##0.00', 'en_US').format(bicyleMap["price"] + 125.99 + 115.99)}"),
                            const Total(title: "Delivery fee", value: "\$0"),
                            const Total(title: "Discount", value: "30%"),
                            Total(
                                title: "Total",
                                value:
                                    "\$${NumberFormat('#,##0.00', 'en_US').format((bicyleMap["price"] + 125.99 + 115.99) * 0.7)}"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const HomeScreen()));
        },
        child: Container(
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
      ),
    );
  }
}
