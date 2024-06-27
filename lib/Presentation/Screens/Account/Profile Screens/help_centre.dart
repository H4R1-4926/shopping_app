import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';

class HelpCentrePage extends StatelessWidget {
  const HelpCentrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: kwhite,
        automaticallyImplyLeading: true,
        backgroundColor: kwhite,
        title: Text(
          'Help Centre',
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
