import 'package:bicycle_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Cart extends StatelessWidget {
  const Cart(
      {super.key, required this.img, required this.name, required this.price});
  final String img;
  final String name;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 25, left: 15, right: 15),
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 25),
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Color.fromRGBO(255, 255, 255, 0.5), width: 2))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 108,
            width: 130,
            alignment: Alignment.center,
            decoration: AppTheme.contDecoration1.copyWith(
                border: Border.all(
                    color: const Color.fromRGBO(255, 255, 255, 0), width: 2),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  const BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(5, 6),
                      blurRadius: 10)
                ]),
            child: Image.asset(
              img,
              height: 92,
              width: 100,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontSize: 25)),
                       const SizedBox(
            height: 35,
          ),
              Text("\$${NumberFormat('#,##0.00', 'en_US').format(price)}",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 18,
                      color: const Color.fromRGBO(55, 182, 233, 1))),
            ],
          ),
        // const SizedBox(
        //     width: 40,
        //   ),
        Spacer(),
        Container(
          height: 31,width: 67,color: const Color.fromRGBO(30, 30, 30, 0.8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){},
                child: Container(
                  height: 23,width: 20,
                  decoration: AppTheme.smallContDecoration.copyWith(borderRadius: BorderRadius.circular(5)),
                  child: const Icon(Icons.add,size: 10,),
                ),
              ),
              Text("1",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: AppTheme.textColor,fontSize: 11)),
               GestureDetector(
                onTap: (){},
                child: Container(
                  height: 23,width: 20,
                  decoration: AppTheme.contDecoration1.copyWith(borderRadius: BorderRadius.circular(5)),
                  child: const Icon(Icons.horizontal_rule_rounded,size: 10,),
                ),
              ),
            ],
          ),
        )
        ],
      ),
    );
  }
}
