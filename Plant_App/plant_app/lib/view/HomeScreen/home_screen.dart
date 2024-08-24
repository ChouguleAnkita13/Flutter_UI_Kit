import 'package:flutter/material.dart';
import 'package:plant_app/view/HomeScreen/Widgets/find_plants_row.dart';
import 'package:plant_app/view/HomeScreen/Widgets/offer_row.dart';
import 'package:plant_app/view/HomeScreen/Widgets/plant_category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 247, 248, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Transform.translate(
                offset: const Offset(0.0, -30.0),
                child: Image.asset("assets/images/Group3.png")),
          ),
          //Find plants Row
          const FindPlantsRow(),
          //to display list of offers called OfferRow()
          OfferRow(),
          //to display category of plants called PlantCategory()
          const PlantCategory()
          ],
      ),
    );
  }
}
