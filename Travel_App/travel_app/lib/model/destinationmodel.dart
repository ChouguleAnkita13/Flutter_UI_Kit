class Destinationmodel {
  final String imgUrl;
  final String title;
  final String location;
  final int price;
  final double rate;
  final int reviews;
  bool isBookMarked;

  Destinationmodel(
      {required this.imgUrl,
      required this.title,
      required this.location,
      required this.price,
      required this.rate,
      required this.reviews,
      required this.isBookMarked});
}
