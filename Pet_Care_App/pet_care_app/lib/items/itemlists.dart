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
      days: ["8", "10"],
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
      days: ["6" , "9"],
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
      days: ["8" , "10"],
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
      days: ["6", "9"],
      time: 9),
];

final List trainingList = [
  {
    "imgUrl": "assets/images/training/obedience.png",
    "course": "Obedience Courses",
    "author": "By Jhon Smith",
    "rate": "4.9",
    "views": "335"
  },
  {
    "imgUrl": "assets/images/training/speciality.png",
    "course": "Specialty Classes & Workshops",
    "author": "By Duke Fuzzington",
    "rate": "5.0",
    "views": "500"
  },
  {
    "imgUrl": "assets/images/training/puppy.png",
    "course": "Puppy Kinderganten and Playgroups",
    "author": "By Sir Fluffington",
    "rate": "5.0",
    "views": "500"
  },
  {
    "imgUrl": "assets/images/training/pexels.png",
    "course": "Canine Good Citizen Test",
    "author": "By Baron Fuzzypaws",
    "rate": "4.8",
    "views": "220"
  },
  {
    "imgUrl": "assets/images/training/theraphy.png",
    "course": "Theraphy Dogs",
    "author": "By Duke Fuzzington",
    "rate": "5.0",
    "views": "500"
  },
];

final List groomingList = [
  {
    "imgUrl": "assets/images/grooming/bath.png",
    "title": "Bathing & Drying"
  },
  {
    "imgUrl": "assets/images/grooming/hair.png",
    "title": "Hair Triming"
  },
  {
    "imgUrl": "assets/images/grooming/nail.png",
    "title": "Nail Trimming"
  },
  {
    "imgUrl": "assets/images/grooming/ear.png",
    "title": "Ear Cleaning"
  },
  {
    "imgUrl": "assets/images/grooming/teeth.png",
    "title": "Teeth Brushing"
  },
  {
    "imgUrl": "assets/images/grooming/flea.png",
    "title": "Flea Treatment"
  },
  {
    "imgUrl": "assets/images/grooming/bath.png",
    "title": "Bathing & Drying"
  },
  {
    "imgUrl": "assets/images/grooming/ear.png",
    "title": "Ear Cleaning"
  },
];

final List shopList = [
  {
    "imgUrl": "assets/images/shop/pets.png",
    "title": "Pets"
  },
   {
    "imgUrl": "assets/images/shop/food.png",
    "title": "Foods"
  }, {
    "imgUrl": "assets/images/shop/health.png",
    "title": "Healthy"
  }, {
    "imgUrl": "assets/images/shop/toys.png",
    "title": "Toys"
  }, {
    "imgUrl": "assets/images/shop/accessories.png",
    "title": "Accessories"
  }, {
    "imgUrl": "assets/images/shop/cloths.png",
    "title": "Cloths"
  },
 
];
