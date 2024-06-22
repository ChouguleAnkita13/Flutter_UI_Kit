import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchContainer extends StatefulWidget {
  const SearchContainer({super.key});

  @override
  State<SearchContainer> createState() => _SearchContainerState();
}

class _SearchContainerState extends State<SearchContainer> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border:
            Border.all(color: const Color.fromRGBO(250, 200, 162, 1), width: 2),
      ),
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 14),
      height: 40,
      child: TextFormField(
        controller: _searchController,
        cursorColor: const Color.fromRGBO(250, 200, 162, 1),
        style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            color: const Color.fromRGBO(194, 195, 204, 1),
            fontSize: 12),
        decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: "Search",
            suffixIcon: Icon(
              Icons.search,
              size: 24,
              color: Color.fromRGBO(245, 146, 69, 1),
            )),
      ),
    );
  }
}
