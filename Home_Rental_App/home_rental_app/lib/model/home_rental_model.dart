class HomeRentalModel {
  final String name;
  final String image;
  final String location;
  final String details;
  final int rent;
  final int noOfBedRooms;
  final int noOfBathRooms;
  final int sqFit;

  const HomeRentalModel({
    required this.name,
    required this.image,
    required this.location,
    required this.details,
    required this.rent,
    required this.noOfBathRooms,
    required this.noOfBedRooms,
    required this.sqFit,
  });
}
