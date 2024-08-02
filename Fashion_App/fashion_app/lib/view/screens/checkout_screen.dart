import 'package:fashion_app/theme/app_theme.dart';
import 'package:fashion_app/view/screens/home_screen.dart';
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
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width/2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(Icons.arrow_back_ios),
                  ),
                  Text("Checkout", style: Theme.of(context).textTheme.bodyLarge),
                  
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Spacer(),
             Center(
               child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HomeScreen()));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
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