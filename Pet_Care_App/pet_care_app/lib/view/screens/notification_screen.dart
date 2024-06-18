import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  final notificationList = [
    "Today",
    "25 September",
    "15 September",
    "21 October",
    "16 October"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width / 1.6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                          Navigator.of(context).pushNamed("/dashboard");
                  },
                  child: Container(
                      width: 26,
                      height: 26,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromRGBO(245, 146, 69, 1),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Color.fromRGBO(255, 255, 255, 1),
                        size: 13,
                      )),
                ),
                Text(
                  "Notifications",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(31, 32, 41, 1),
                      fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: notificationList.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        notificationList[index],
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                            fontSize: 14),
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        margin: const EdgeInsets.only(top: 15, bottom: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(22, 34, 51, 0.08),
                                  blurRadius: 16,
                                  offset: Offset(0, 8),
                                  spreadRadius: -4)
                            ]),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                    "assets/images/notification/checkout.png"),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Text(
                                    "Your checkout is successfull, product is on the way",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        color:
                                            const Color.fromRGBO(31, 32, 41, 1),
                                        fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                    "assets/images/notification/appoinment.png"),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Text(
                                    "Appointment request accepted",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        color:
                                            const Color.fromRGBO(31, 32, 41, 1),
                                        fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            notificationList[index] != "Today"
                                ? const SizedBox(
                                    height: 10,
                                  )
                                : const SizedBox(),
                            notificationList[index] != "Today"
                                ? Row(
                                    children: [
                                      Image.asset(
                                          "assets/images/notification/vaccinate.png"),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "Vaccinate your pet timely",
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              color: const Color.fromRGBO(
                                                  31, 32, 41, 1),
                                              fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  )
                                : const Row()
                          ],
                        ),
                      )
                    ],
                  );
                }),
          )
        ]),
      ),
    );
  }
}
