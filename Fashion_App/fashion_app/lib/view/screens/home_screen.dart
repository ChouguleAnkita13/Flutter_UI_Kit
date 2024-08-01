import 'package:fashion_app/model/fashion_model.dart';
import 'package:fashion_app/theme/app_theme.dart';
import 'package:fashion_app/view/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List categories = ["All", "Men", "Women", "Kids", "Other"];
  int selectedCategoriesIndex = 0;

  BoxDecoration? selectedCategory(int idx) {
    if (selectedCategoriesIndex == idx) {
      return BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppTheme.primaryLightColor);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/icons/menu.png"),
              Image.asset("assets/icons/profile.png")
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text("Explore", style: Theme.of(context).textTheme.displayMedium),
          Text("Best trendy collection!",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: const Color.fromRGBO(121, 119, 128, 1))),
          const SizedBox(
            height: 20,
          ),
          //Categories
          SizedBox(
            height: 30,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategoriesIndex = index;
                      });
                    },
                    child: Container(
                      decoration: selectedCategory(index),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      margin: const EdgeInsets.only(right: 15),
                      child: Text(categories[index],
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                  color: selectedCategoriesIndex != index
                                      ? AppTheme.textColor
                                      : Colors.white)),
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 20,
          ),
      //FashionList Items
          Expanded(
              child: GridView.custom(
            gridDelegate: SliverWovenGridDelegate.count(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              pattern: [
                const WovenGridTile(2 / 3.5),
              ],
            ),
            childrenDelegate: SliverChildBuilderDelegate(
              childCount: fashionItemList.length,
              (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsScreen(fashionItem:fashionItemList[index])));
                      },
                      child: Stack(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                fashionItemList[index].imgUrl,
                              )),
                          Positioned(
                              right: 10,
                              bottom: 0,
                              child: Transform.translate(
                                offset: const Offset(0, 11),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.white, width: 4),
                                    borderRadius: BorderRadius.circular(100),
                                    color: AppTheme.primaryColor,
                                  ),
                                  child: const Icon(
                                    Icons.shopping_bag_outlined,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                    Text(
                      "\$${fashionItemList[index].price}",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      fashionItemList[index].brandName,
                      style: Theme.of(context).textTheme.labelLarge,
                    )
                  ],
                );
              },
            ),
          ))
        ],
      ),
    );
  }
}
