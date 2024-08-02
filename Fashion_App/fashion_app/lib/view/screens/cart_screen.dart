import 'package:fashion_app/theme/app_theme.dart';
import 'package:fashion_app/view/screens/checkout_screen.dart';
import 'package:flutter/material.dart';

import '../../model/fashion_model.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  Row rowFunction(String text, double price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: const Color.fromRGBO(121, 119, 128, 1)),
        ),
        Text("\$$price", style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width / 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(Icons.arrow_back_ios),
                  ),
                  Text("Cart", style: Theme.of(context).textTheme.bodyLarge),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text("My Orders", style: Theme.of(context).textTheme.displayMedium),
            SizedBox(
              height: 350,
              child: ListView.builder(
                  itemCount: fashionItemList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(fashionItemList[index].imgUrl,
                                width: 110, height: 140, fit: BoxFit.cover),
                          ),
                          const SizedBox(width: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 130,
                                child: Text(
                                    "Premium ${fashionItemList[index].brandName}",
                                    style:
                                        Theme.of(context).textTheme.bodyLarge),
                              ),
                              Text("Yellow",
                                  style: Theme.of(context).textTheme.bodySmall),
                              Text("Size L",
                                  style: Theme.of(context).textTheme.bodySmall),
                              const SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("\$${fashionItemList[index].price}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium),
                                  const SizedBox(width: 40),
                                  Text("1x",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            //Divder Line
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromRGBO(227, 227, 227, 1), width: 1)),
            ),
            const SizedBox(height: 30),
            rowFunction("Total Items (3)", 116.00),
            const SizedBox(height: 10),
            rowFunction("Standard Delivery", 12.00),
            const SizedBox(height: 10),
            rowFunction("Total Payment", 126.00),

            const Spacer(),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CheckoutScreen()));
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  decoration: AppTheme.conDecor,
                  child: Text("Checkout Now",
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
