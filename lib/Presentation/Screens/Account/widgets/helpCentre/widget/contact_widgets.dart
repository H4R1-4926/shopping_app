import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';

class ContactWidgets extends StatelessWidget {
  final String text;
  final IconData icon;
  const ContactWidgets({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        leading: FaIcon(
          icon,
          color: kblack,
        ),
        title: Text(
          text,
          style: GoogleFonts.poppins(
              fontSize: 13, fontWeight: FontWeight.bold, color: kblack),
        ),
        tileColor: kwhite,
      ),
    );
  }
}
