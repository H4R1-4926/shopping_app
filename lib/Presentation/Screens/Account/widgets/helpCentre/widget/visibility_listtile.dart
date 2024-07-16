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
            child: AnimatedContainer(
              decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? kdarkcolor3
                      : kwhite,
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(22),
                    topRight: const Radius.circular(22),
                    bottomLeft: isVisible
                        ? const Radius.circular(0)
                        : const Radius.circular(22),
                    bottomRight: isVisible
                        ? const Radius.circular(0)
                        : const Radius.circular(22),
                  )),
              duration: const Duration(milliseconds: 900),
              curve: Curves.easeInOut,
              height: 55,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        widget.title,
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      child: const Icon(
                        Iconsax.arrow_down_1,
                        size: 20,
                      ),
                    )
                  ],
                ),
              ),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: AnimatedContainer(
            alignment:
                isVisible ? Alignment.center : AlignmentDirectional.topStart,
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeInOut,
            height: isVisible ? 120 : 0,
            decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.dark
                    ? kdarkcolor3
                    : kwhite,
                borderRadius: BorderRadius.only(
                    topRight: isVisible
                        ? const Radius.circular(0)
                        : const Radius.circular(22),
                    topLeft: isVisible
                        ? const Radius.circular(0)
                        : const Radius.circular(22),
                    bottomLeft: const Radius.circular(22),
                    bottomRight: const Radius.circular(22))),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: AnimatedDefaultTextStyle(
                style: isVisible
                    ? GoogleFonts.poppins(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? kwhite
                            : kblack,
                        fontSize: 13,
                      )
                    : GoogleFonts.poppins(color: kblack, fontSize: 0),
                curve: Curves.easeInOut,
                duration: const Duration(milliseconds: 900),
                child: Text(
                  widget.answer,
                ),
              ),
            ),
          ),
        ),
        kSizedBoxHeight20
      ],
    );
  }
}
