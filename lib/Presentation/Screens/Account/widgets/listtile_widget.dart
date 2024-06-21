import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class ListTileWidget extends StatelessWidget {
  final IconData prefixIcon;
  final String titleText;
  final String? secondText;
  final Color? textColour;
  final Color? iconColour;
  final bool trailIcon;
  final void Function() ontap;
  const ListTileWidget({
    super.key,
    required this.prefixIcon,
    required this.titleText,
    this.secondText,
    required this.ontap,
    this.textColour,
    this.iconColour,
    required this.trailIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: GestureDetector(
        onTap: ontap,
        child: ListTile(
          leading: Icon(
            prefixIcon,
            color: iconColour,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                titleText,
                style: GoogleFonts.poppins(
                    color: textColour,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              Text(
                secondText ?? ' ',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ],
          ),
          trailing:
              trailIcon ? const Icon(Iconsax.arrow_right_3) : const SizedBox(),
        ),
      ),
    );
  }
}
