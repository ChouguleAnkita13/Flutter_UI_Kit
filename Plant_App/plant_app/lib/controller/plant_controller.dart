import 'package:plant_app/model/plant_model.dart';
import 'package:plant_app/model/plantdata_model.dart';

class PlantController {
  final List<PlantModel> plantList = [
    const PlantModel(type: "Indoor", plantData: [
      PlantdataModel(
          plantImg: "assets/images/snakePlant.png",
          plantName: "Snake Plants",
          price: 350),
      PlantdataModel(
          plantImg: "assets/images/snakePlant.png",
          plantName: "Snake Plants",
          price: 350),
      PlantdataModel(
          plantImg: "assets/images/snakePlant.png",
          plantName: "Snake Plants",
          price: 350),
      PlantdataModel(
          plantImg: "assets/images/snakePlant.png",
          plantName: "Snake Plants",
          price: 350),
    ]),
    const PlantModel(type: "Outdoor", plantData: [
      PlantdataModel(
          plantImg: "assets/images/snakePlant.png",
          plantName: "Snake Plants",
          price: 350),
      PlantdataModel(
          plantImg: "assets/images/snakePlant.png",
          plantName: "Snake Plants",
          price: 350),
      PlantdataModel(
          plantImg: "assets/images/snakePlant.png",
          plantName: "Snake Plants",
          price: 350),
      PlantdataModel(
          plantImg: "assets/images/snakePlant.png",
          plantName: "Snake Plants",
          price: 350),
    ])
  ];
}
