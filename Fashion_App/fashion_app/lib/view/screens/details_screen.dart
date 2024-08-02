import 'package:fashion_app/model/fashion_model.dart';
import 'package:fashion_app/theme/app_theme.dart';
import 'package:fashion_app/view/screens/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key, required this.fashionItem});
  final FashionModel fashionItem;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final _controller = PageController();
  List sizeList = ["S", "M", "L", "XL", "XXL"];
  int selectedSizeIndex = 0;
  int index = 0;

  BoxDecoration? selectedSize(int idx) {
    if (selectedSizeIndex == idx) {
      return BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppTheme.primaryColor);
    }
    return null;
  }

  List pages = ["", "assets/images/slider.png", "assets/images/slider1.png"];
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
            Stack(
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 2,
                  child: PageView.builder(
                    controller: _controller,
                    onPageChanged: (newIndex) {
                      setState(() {
                        index = newIndex;
                      });
                    },
                    itemCount: pages.length,
                    itemBuilder: (context, pageIndex) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                            index == 0
                                ? widget.fashionItem.fullImgUrl
                                : pages[index],
                            width: MediaQuery.sizeOf(context).width,
                            height: MediaQuery.sizeOf(context).height / 2,
                            fit: BoxFit.cover),
                      );
                    },
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 130,
                  child: SmoothPageIndicator(
                    controller: _controller,
                    count: pages.length,
                    effect: const ExpandingDotsEffect(
                        spacing: 5.0,
                        radius: 4.0,
                        dotWidth: 6.0,
                        dotHeight: 5.0,
                        strokeWidth: 1.5,
                        dotColor: Colors.grey,
                        activeDotColor: Colors.white),
                    onDotClicked: (newIndex) => _controller.animateToPage(
                      newIndex,
                      duration: const Duration(milliseconds: 350),
                      curve: Curves.easeIn,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 210,
                  child: Text("Premium ${widget.fashionItem.brandName}",
                      style: Theme.of(context).textTheme.titleLarge),
                ),
                Image.asset("assets/images/choice1.png"),
                Image.asset("assets/images/choice2.png"),
                Image.asset("assets/images/choice3.png"),
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
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CartScreen()));
                  },
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
