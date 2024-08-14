import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/view/widgets/view/line_circle.dart';

class ViewContainer extends StatefulWidget {
  const ViewContainer({super.key, required this.title, required this.img});
  final String title;
  final String img;

  @override
  State<ViewContainer> createState() => _ViewContainerState();
}

class _ViewContainerState extends State<ViewContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: widget.title == "La-Hotel"
          ? CrossAxisAlignment.end
          : CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromRGBO(62, 62, 62, 1).withOpacity(0.9),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  widget.img,
                  width: 63,
                  height: 62,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 16),
                  ),
                  Text(
                    "2.09 mi",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 14),
                  ),
                ],
              )
            ],
          ),
        ),
        const LineCircle()
      ],
    );
  }
}
