import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/models/doctor_model.dart';
import 'package:pet_care_app/view/widgets/available_date_time.dart';
import 'package:pet_care_app/view/widgets/infocard.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({super.key, required this.doctorModel});
  final DoctorModel doctorModel;

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 1.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed("/veterinary");
                      },
                      child: Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color.fromRGBO(255, 255, 255, 1)),
                          child: const Icon(
                            Icons.arrow_back_ios_new_outlined,
                            color: Color.fromRGBO(245, 146, 69, 1),
                            size: 13,
                          )),
                    ),
                    Text(
                      "Veterinary",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  widget.doctorModel.imgUrl,
                  height: 152,
                  width: MediaQuery.sizeOf(context).width,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
            child: Container(
          width: MediaQuery.sizeOf(context).width,
          decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              )),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 25, right: 25, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.doctorModel.name,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 24),
                ),
                Text(
                  widget.doctorModel.behavior,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(194, 195, 204, 1),
                      fontSize: 12),
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InfoCard(
                        title: "Experience",
                        content: "${widget.doctorModel.experience} years",
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InfoCard(
                        title: "Price",
                        content: "\$${widget.doctorModel.price}",
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InfoCard(
                        title: "Location",
                        content: "${widget.doctorModel.distance} Km",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "About",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 14),
                ),
                SizedBox(
                  height: 40,
                  child: Text(
                    widget.doctorModel.about,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(194, 195, 204, 1),
                        fontSize: 12),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
//Available date&time
                AvailableDateTime(days:widget.doctorModel.days,time:widget.doctorModel.time),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.sizeOf(context).width, 32),
                    backgroundColor: const Color.fromRGBO(252, 219, 193, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.map_outlined,size: 14, color: Color.fromRGBO(163, 97, 46, 1),),
                      Text(
                        " See Location",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(163, 97, 46, 1),
                            fontSize: 12),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.sizeOf(context).width, 32),
                    backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Book Now",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        )),
      ]),
    );
  }
}
