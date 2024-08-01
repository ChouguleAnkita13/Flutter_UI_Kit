import 'package:fashion_app/model/fashion_model.dart';
import 'package:fashion_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key, required this.fashionItem});
  final FashionModel fashionItem;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  List sizeList = ["S", "M", "L", "XL", "XXL"];
  int selectedSizeIndex = 0;

  BoxDecoration? selectedSize(int idx) {
    if (selectedSizeIndex == idx) {
      return BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppTheme.primaryColor);
    }
    return null;
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(Icons.arrow_back_ios),
                ),
                Text("Details", style: Theme.of(context).textTheme.bodyLarge),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.bookmark_border,
                    size: 26,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            //Image
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(widget.fashionItem.imgUrl,
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height / 2,
                  fit: BoxFit.cover),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                SizedBox(
                  width: 210,
                  child: Text("Premium Tagerine Shirt",
                      style: Theme.of(context).textTheme.titleLarge),
                )
              ],
            ),

            const SizedBox(height: 10),
            //SizeList
            Text("Size", style: Theme.of(context).textTheme.titleMedium),
            SizedBox(
              height: 40,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: sizeList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedSizeIndex = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 15),
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        alignment: Alignment.center,
                        decoration: selectedSize(index),
                        child: Text(sizeList[index],
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: selectedSizeIndex == index
                                        ? Colors.white
                                        : AppTheme.textColorLight)),
                      ),
                    );
                  }),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$${widget.fashionItem.price}",
                    style: Theme.of(context).textTheme.displayMedium),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    decoration: AppTheme.conDecor,
                    child: Text("Add to Cart",
                        style: Theme.of(context).textTheme.bodyMedium),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
