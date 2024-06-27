import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/size.dart';

class TitleAndDescWidget extends StatelessWidget {
  final String title;
  final String description;
  const TitleAndDescWidget({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        kSizedBoxHeight10,
        Text(
          description,
          style: GoogleFonts.lato(fontWeight: FontWeight.w500),
        ),
        kSizedBoxHeight30
      ],
    );
  }
}
