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
      price: 559,
      rate: 4.7,
      reviews: 2498),
  const Destinationmodel(
      imgUrl: "assets/images/home/casalas.png",
      title: "Casalas Tirtugas",
      location: "Av Damero, Mexico",
      price: 894,
      rate: 4.8,
      reviews: 4551),
  const Destinationmodel(
      imgUrl: "assets/images/home/darma.png",
      title: "Darma Reservoir",
      location: "Darma, Kuningan",
      price: 561,
      rate: 4.8,
      reviews: 3351),
  const Destinationmodel(
      imgUrl: "assets/images/home/aonang.png",
      title: "Aonang Villa",
      location: "Bastola, Islampur",
      price: 761,
      rate: 4.7,
      reviews: 5104),
  const Destinationmodel(
      imgUrl: "assets/images/details/d4.png",
      title: "Rangauti Resort",
      location: "Sylhet, Airport Road",
      price: 857,
      rate: 4.9,
      reviews: 6225),
  const Destinationmodel(
      imgUrl: "assets/images/details/d5.png",
      title: "High Rech Park",
      location: "Zeero Point, Sylhet",
      price: 864,
      rate: 4.7,
      reviews: 2498),
];
