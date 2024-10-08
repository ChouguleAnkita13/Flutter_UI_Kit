import 'package:get/get.dart';
import 'package:travel_app/model/destinationmodel.dart';

class DestinationController extends GetxController {
  ///LIST OF DESTINATIONMODEL
  final List<Destinationmodel> destinationList = [
    Destinationmodel(
        imgUrl: "assets/images/home/niladri.png",
        title: "Niladri Reservoir",
        location: "Tekergat, Sunamgnj",
        price: 559,
        rate: 4.7,
        reviews: 2498,
        isBookMarked: true),
    Destinationmodel(
        imgUrl: "assets/images/home/casalas.png",
        title: "Casalas Tirtugas",
        location: "Av Damero, Mexico",
        price: 894,
        rate: 4.8,
        reviews: 4551,
        isBookMarked: false),
    Destinationmodel(
        imgUrl: "assets/images/home/darma.png",
        title: "Darma Reservoir",
        location: "Darma, Kuningan",
        price: 561,
        rate: 4.8,
        reviews: 3351,
        isBookMarked: false),
    Destinationmodel(
        imgUrl: "assets/images/home/aonang.png",
        title: "Aonang Villa",
        location: "Bastola, Islampur",
        price: 761,
        rate: 4.7,
        reviews: 5104,
        isBookMarked: true),
    Destinationmodel(
        imgUrl: "assets/images/details/d4.png",
        title: "Rangauti Resort",
        location: "Sylhet, Airport Road",
        price: 857,
        rate: 4.9,
        reviews: 6225,
        isBookMarked: false),
    Destinationmodel(
        imgUrl: "assets/images/details/d5.png",
        title: "High Rech Park",
        location: "Zeero Point, Sylhet",
        price: 864,
        rate: 4.7,
        reviews: 2498,
        isBookMarked: false),
  ];

  ///VARIABLE
  Destinationmodel? _selectedDestination;

  ///GETTER FOR SELECTED DESTINATION
  Destinationmodel? get selectedDestination => _selectedDestination;

  ///SET CURRENT DESTINATION
  void selectDestination(Destinationmodel destination) {
    _selectedDestination = destination;
  }
}
