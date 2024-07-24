// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';

class IconWithTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  void Function()? ontap;
  IconWithTextWidget(
      {super.key, required this.icon, required this.text, this.ontap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: ontap,
          child: CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 233, 233, 233),
            radius: 27,
            child: Icon(
              icon,
              color: kblack,
              size: 28,
            ),
          ),
        ),
        const SizedBox(
          height: 9,
        ),
        Text(
          text,
          maxLines: 2,
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 13),
        )
      ],
    );
  }
}
