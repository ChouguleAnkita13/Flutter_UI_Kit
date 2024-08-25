import 'package:plant_app/model/plant_model.dart';
import 'package:plant_app/model/plantdata_model.dart';

class PlantController {
  final List<PlantModel> plantList = [
    const PlantModel(type: "Indoor", plantData: [
      PlantdataModel(
          id: 1,
          plantImg: "assets/images/snakePlant.png",
          plantName: "Snake Plants",
          price: 350),
      PlantdataModel(
          id: 2,
          plantImg: "assets/images/snakePlant.png",
          plantName: "Snake Plants",
          price: 350),
      PlantdataModel(
          id: 3,
          plantImg: "assets/images/snakePlant.png",
          plantName: "Snake Plants",
          price: 350),
      PlantdataModel(
          id: 4,
          plantImg: "assets/images/snakePlant.png",
          plantName: "Snake Plants",
          price: 350),
    ]),
    const PlantModel(type: "Outdoor", plantData: [
      PlantdataModel(
          id: 5,
          plantImg: "assets/images/snakePlant.png",
          plantName: "Snake Plants",
          price: 350),
      PlantdataModel(
          id: 6,
          plantImg: "assets/images/snakePlant.png",
          plantName: "Snake Plants",
          price: 350),
      PlantdataModel(
          id: 7,
          plantImg: "assets/images/snakePlant.png",
          plantName: "Snake Plants",
          price: 350),
      PlantdataModel(
          id: 8,
          plantImg: "assets/images/snakePlant.png",
          plantName: "Snake Plants",
          price: 350),
    ])
  ];
}
