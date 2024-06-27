import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Core/colors.dart';

class ThemeSettings extends StatefulWidget {
  const ThemeSettings({super.key});

  @override
  State<ThemeSettings> createState() => _ThemeSettingsState();
}

class _ThemeSettingsState extends State<ThemeSettings> {
  int isSelected = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: kwhite,
        automaticallyImplyLeading: true,
        backgroundColor: kwhite,
        title: Text(
          'Theme',
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: ListTile(
                leading: Text(
                  'System Default',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700, fontSize: 14),
                ),
                trailing: Radio(
                  value: 1,
                  groupValue: isSelected,
                  onChanged: (value) {
                    setState(() {
                      isSelected = value!;
                    });
                  },
                  activeColor: kblack,
                  splashRadius: 20,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: ListTile(
                leading: Text(
                  'Light',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700, fontSize: 14),
                ),
                trailing: Radio(
                  value: 2,
                  groupValue: isSelected,
                  onChanged: (value) {
                    setState(() {
                      isSelected = value!;
                    });
                  },
                  activeColor: kblack,
                  splashRadius: 20,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: ListTile(
                leading: Text(
                  'Dark',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700, fontSize: 14),
                ),
                trailing: Radio(
                  value: 3,
                  groupValue: isSelected,
                  onChanged: (value) {
                    setState(() {
                      isSelected = value!;
                    });
                  },
                  activeColor: kblack,
                  splashRadius: 20,
                ),
              ),
            ),
          )
        ],
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: const ButtonStyle(
              elevation: MaterialStatePropertyAll(8),
              backgroundColor: MaterialStatePropertyAll(kblack),
              fixedSize: MaterialStatePropertyAll(Size(270, 50))),
          child: Text(
            'Apply',
            style: GoogleFonts.lato(
                color: kwhite, fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ),
      ),
    );
  }
}
