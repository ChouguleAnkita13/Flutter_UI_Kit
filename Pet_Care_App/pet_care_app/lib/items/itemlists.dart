import 'package:pet_care_app/models/category_model.dart';
import 'package:pet_care_app/models/doctor_model.dart';
import 'package:pet_care_app/models/veterinary_model.dart';

final List<CategoryModel> categoriesList = [
  const CategoryModel(
      img: "assets/images/dashboard/category/veterinary.png",
      title: "Veterinary"),
  const CategoryModel(
      img: "assets/images/dashboard/category/grooming.png", title: "Grooming"),
  const CategoryModel(
      img: "assets/images/dashboard/category/petstore.png", title: "Pet Store"),
  const CategoryModel(
      img: "assets/images/dashboard/category/training.png", title: "Training"),
];

final List<VeterinaryModel> veterinaryList = [
  const VeterinaryModel(
      img: "assets/images/veterinary/vaccination.png", title: "Vaccinations"),
  const VeterinaryModel(
      img: "assets/images/veterinary/operation.png", title: "Operations"),
  const VeterinaryModel(
      img: "assets/images/veterinary/behaviorals.png", title: "Behaviorals"),
  const VeterinaryModel(
      img: "assets/images/veterinary/dentist.png", title: "Dentistry"),
];

final List<DoctorModel> doctorList = [
  const DoctorModel(
      name: "Dr. Anna Johanson",
      behavior: "Veterinary Behaviroal",
      imgUrl: "assets/images/veterinary/anna.png",
      rate: 4.8,
      distance: 2.5,
      experience: 11,
      price: 250,
      about:
          "Dr. Anna Johanson is a highly experienced veterinarian with 11 years of dedicated practice, showcasing a pro...about",
      days: ["Sun,8", "Tue,10"],
      time: 9),
  const DoctorModel(
      name: "Dr. Vernon Chwe",
      behavior: "Veterinary Surgery",
      imgUrl: "assets/images/veterinary/vernon.png",
      rate: 4.9,
      distance: 1.5,
      experience: 12,
      price: 270,
      about:
          "Dr. Vernon Chwe is a highly experienced veterinarian with 12 years of dedicated practice, showcasing a pro...about",
      days: ["Fri,6", "Mon,9"],
      time: 9),
  const DoctorModel(
      name: "Dr. Anna Johanson",
      behavior: "Veterinary Behaviroal",
      imgUrl: "assets/images/veterinary/anna.png",
      rate: 4.8,
      distance: 2.5,
      experience: 11,
      price: 250,
      about:
          "Dr. Anna Johanson is a highly experienced veterinarian with 11 years of dedicated practice, showcasing a pro...about",
      days: ["Sun,8", "Tue,10"],
      time: 9),
  const DoctorModel(
      name: "Dr. Vernon Chwe",
      behavior: "Veterinary Surgery",
      imgUrl: "assets/images/veterinary/vernon.png",
      rate: 4.9,
      distance: 1.5,
      experience: 12,
      price: 270,
      about:
          "Dr. Vernon Chwe is a highly experienced veterinarian with 12 years of dedicated practice, showcasing a pro...about",
      days: ["Fri,6", "Mon,9"],
      time: 9),
];
