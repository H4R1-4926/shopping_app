import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';

class ListTileRadioWidget extends StatelessWidget {
  final String language;
  final int value;
  final int groupValue;
  final void Function(int?) onChanged;

  const ListTileRadioWidget({
    super.key,
    required this.language,
    required this.value,
    required this.onChanged,
    required this.groupValue,
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
          trailing: Radio(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
            activeColor: kblack,
            splashRadius: 20,
          ),
        ),
      ),
    );
  }
}
