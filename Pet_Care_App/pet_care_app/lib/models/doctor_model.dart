class DoctorModel{
  final String name;
  final String behavior;
  final String imgUrl;
  final double rate;
  final double distance;
  final int experience;
  final int price;
  final String about;
  final List days;
  final int time;

  const DoctorModel(
    {
      required this.name,
      required this.behavior,
      required this.imgUrl,
      required this.rate,
      required this.distance,
      required this.experience,
      required this.price,
      required this.about,
      required this.days,
      required this.time
    }
  );
}