import 'package:flutter/material.dart';

class CustomRowWidget extends StatelessWidget {
  const CustomRowWidget({super.key,required this.price,required this.text});
  final String text;
  final double price;

  @override
  Widget build(BuildContext context) {
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
        Text("\$${price.toStringAsFixed(2)}", style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}