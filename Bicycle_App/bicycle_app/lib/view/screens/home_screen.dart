import 'package:bicycle_app/view/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:bicycle_app/theme/app_theme.dart';
import 'package:intl/intl.dart';
import '../../items/itemlists.dart';
import '../widgets/bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  BoxDecoration chooseItem(int idx) {
    return selectedIndex == idx
        ? AppTheme.smallContDecoration
        : AppTheme.smallContDecoration1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: AppTheme.primaryGradient,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Stack(
            children: [
              Column(
                children: [
                  _buildHeader(context),
                  _buildExtremeText(context),
                ],
              ),
              Positioned(
                top: 90,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      _buildMainBanner(context),
                      const SizedBox(height: 15),
                      _buildHorizontalList(),
                      const SizedBox(height: 15),
                      _buildGridView(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          SizedBox(
            width: 200,
            child: Text(
              "Choose Your Bicycle",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const Spacer(),
          Container(
            height: 45,
            width: 45,
            decoration: AppTheme.smallContDecoration,
            child: const Icon(Icons.circle_outlined),
          ),
        ],
      ),
    );
  }

  Widget _buildExtremeText(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: SizedBox(
        height: MediaQuery.of(context).size.width,
        child: Text(
          "EXTREME",
          style: Theme.of(context)
              .textTheme
              .displayLarge!
              .copyWith(color: const Color.fromRGBO(255, 255, 255, 0.08)),
        ),
      ),
    );
  }

  Widget _buildMainBanner(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 234,
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 1),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: AppTheme.contDecoration1,
      child: Row(
        children: [
          Image.asset(
            "assets/images/off.png",
            width: 230,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "EXTREME",
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontSize: 32, color: AppTheme.textColor),
                ),
                const Spacer(),
                Text(
                  "30% OFF",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 32, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHorizontalList() {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: bicycleItem.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              height: 45,
              width: 45,
              margin: const EdgeInsets.only(right: 15),
              decoration: chooseItem(index),
              child: Image.asset(bicycleItem[index]),
            ),
          );
        },
      ),
    );
  }

  Widget _buildGridView() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.75,
        ),
        itemCount: bicycles.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      DetailScreen(bicyleMap: bicycles[index])));
            },
            child: Container(
              width: 181,
              height: 100,
              decoration: AppTheme.contDecoration1,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(bicycles[index]['img'], height: 140, width: 170,fit: BoxFit.cover,),
                  Text(
                    bicycles[index]['type'],
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    bicycles[index]['name'],
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    "\$${NumberFormat('#,##0.00', 'en_US').format(bicycles[index]['price'])}",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
