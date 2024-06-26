import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';

class ListTileRadioWidget extends StatelessWidget {
  final String language;

  const ListTileRadioWidget({
    super.key,
    required this.language,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: ListTile(
          leading: Text(
            language,
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 14),
          ),
          trailing: const RadioWidget(),
        ),
      ),
    );
  }
}

class RadioWidget extends StatelessWidget {
  const RadioWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Radio(
      value: 1,
      groupValue: 1,
      onChanged: (value) {},
      activeColor: kblack,
      splashRadius: 20,
    );
  }
}
