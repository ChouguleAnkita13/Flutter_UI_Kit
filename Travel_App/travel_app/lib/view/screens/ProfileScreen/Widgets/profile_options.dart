import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileOptions extends StatefulWidget {
  const ProfileOptions({super.key});

  @override
  State<ProfileOptions> createState() => _ProfileOptionsState();
}

class _ProfileOptionsState extends State<ProfileOptions> {
  final _profileOptionsList = [
    {"iconUrl": "assets/icons/bookmark.png", "title": "Bookmarked"},
    {"iconUrl": "assets/icons/trips.png", "title": "Previous Trips"},
    {"iconUrl": "assets/icons/settings.png", "title": "Settings"},
    {"iconUrl": "assets/icons/version.png", "title": "Version"}
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color.fromRGBO(255, 255, 255, 1),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromRGBO(180, 188, 201, 0.12),
                  offset: Offset(0, 6),
                  blurRadius: 16)
            ]),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: _profileOptionsList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: ListTile(
                minVerticalPadding: 15.0,
                leading:
                    Image.asset("${_profileOptionsList[index]["iconUrl"]}"),
                title: Text(
                  "${_profileOptionsList[index]["title"]}",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(27, 30, 40, 1),
                      fontSize: 16),
                ),
                trailing: const Icon(Icons.arrow_forward_ios,
                    color: Color.fromRGBO(125, 132, 141, 1), size: 13),
              ),
            );
          },
        ));
  }
}
