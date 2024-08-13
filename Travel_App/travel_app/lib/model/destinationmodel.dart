class Destinationmodel {
  final String imgUrl;
  final String title;
  final String location;
  final int price;
  final double rate;
  final int reviews;

  const Destinationmodel({
    required this.imgUrl,
    required this.title,
    required this.location,
    required this.price,
    required this.rate,
    required this.reviews,
  });
}

final List<Destinationmodel> destinationList = [
  const Destinationmodel(
      imgUrl: "assets/images/home/niladri.png",
      title: "Niladri Reservoir",
      location: "Tekergat, Sunamgnj",
      price: 59,
      rate: 4.7,
      reviews: 2498),
  const Destinationmodel(
      imgUrl: "assets/images/home/darma.png",
      title: "Darma Reservoir",
      location: "Darma, Kuningan",
      price: 61,
      rate: 4.8,
      reviews: 3451),
];
