import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/size.dart';

class VisblityListTile extends StatefulWidget {
  final String title;
  final String answer;
  const VisblityListTile({
    super.key,
    required this.title,
    required this.answer,
  });

  @override
  State<VisblityListTile> createState() => _VisblityListTileState();
}

class _VisblityListTileState extends State<VisblityListTile> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListTile(
              onTap: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              tileColor: kwhite,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(22),
                      topRight: const Radius.circular(22),
                      bottomLeft: isVisible
                          ? const Radius.circular(0)
                          : const Radius.circular(22),
                      bottomRight: isVisible
                          ? const Radius.circular(0)
                          : const Radius.circular(22))),
              title: Text(
                widget.title,
                style: GoogleFonts.poppins(
                    fontSize: 15, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Iconsax.arrow_down_1,
                size: 20,
              )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: AnimatedContainer(
              alignment:
                  isVisible ? Alignment.center : AlignmentDirectional.topStart,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              height: isVisible ? 120 : 0,
              decoration: const BoxDecoration(
                  color: kwhite,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(22),
                      bottomRight: Radius.circular(22)))),
        ),
        kSizedBoxHeight20
      ],
    );
  }
}
