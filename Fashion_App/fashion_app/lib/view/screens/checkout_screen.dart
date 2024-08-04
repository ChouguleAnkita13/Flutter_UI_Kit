import 'package:fashion_app/theme/app_theme.dart';
import 'package:fashion_app/view/screens/bottom_navigation.dart';
import 'package:fashion_app/view/widget/custom_row.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
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
                  Text("Checkout",
                      style: Theme.of(context).textTheme.bodyLarge),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("Delivery Address",
                style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("assets/images/map.png",
                      height: 46, width: 46, fit: BoxFit.cover),
                ),
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  width: 160,
                  child: Text("25/3 Housing Estate, Sylhet",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: AppTheme.textColor,
                            fontWeight: FontWeight.w600,
                          )),
                ),
                const Spacer(),
                Text("Change", style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const Icon(
                  Icons.access_time_sharp,
                  size: 18,
                  color: AppTheme.textColorLight,
                ),
                const SizedBox(
                  width: 7,
                ),
                Text("Delivered in next 7 days",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppTheme.textColor,
                        ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text("Payment Method",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      fontWeight: FontWeight.w500,
                    )),
                    const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/visa.png"),
                Image.asset("assets/images/american.png"),
                Image.asset("assets/images/g.png"),
                Image.asset("assets/images/paypal.png"),
                Image.asset("assets/images/pay.png"),
              ],
            ),
             const SizedBox(
              height: 60,
            ),
            Center(
              child: Text("Add Voucher",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w600,
                      )),
            ),
                    const SizedBox(
              height: 50,
            ),
            RichText(text: TextSpan(
              children: [
                TextSpan(
                  text: "Note : ",
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: const Color.fromRGBO(255, 0, 0, 1),
                  )
                ),
                TextSpan(
                  text:"Use your order id at the payment. Your Id ",
                  style: Theme.of(context).textTheme.bodySmall
                ),
                TextSpan(
                  text:"#154619",
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: AppTheme.textColor
                  )
                ),
                TextSpan(
                  text: " if you forget to put your order id we can’t confirm the payment.",
                  style: Theme.of(context).textTheme.bodySmall
                )
              ]
            ),) ,    
             const SizedBox(height: 40),
            const CustomRowWidget(price: 116.00, text:"Total Items (3)" ),
            const SizedBox(height: 10),

            const CustomRowWidget(price: 12.00, text:"Standard Delivery"),
            const SizedBox(height: 10),

            const CustomRowWidget(price:  126.00, text:"Total Payment" ),


    
            const Spacer(),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CustomBottomNavigation()));
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  decoration: AppTheme.conDecor,
                  child: Text("Pay Now",
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
