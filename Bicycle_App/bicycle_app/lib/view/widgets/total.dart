import 'package:flutter/material.dart';

class Total extends StatelessWidget {
  const Total({super.key, required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.w600)),
        Text(value,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(55, 182, 233, 1))),
      ],
    );
  }
}
