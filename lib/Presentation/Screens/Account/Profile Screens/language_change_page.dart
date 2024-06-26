import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Presentation/Screens/Account/widgets/radio_listtile.dart';

import '../../../../Core/colors.dart';

class LanguageSettings extends StatelessWidget {
  const LanguageSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: kwhite,
        automaticallyImplyLeading: true,
        backgroundColor: kwhite,
        title: Text(
          'Select Language',
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 5, bottom: 10),
              child: Text(
                'Suggested',
                style:
                    GoogleFonts.lato(fontWeight: FontWeight.w900, fontSize: 19),
              ),
            ),
            const ListTileRadioWidget(
              language: 'English (US)',
            ),
            const ListTileRadioWidget(
              language: 'English (UK)',
            ),
            Divider(
              indent: 25,
              endIndent: 25,
              color: kGrey.withOpacity(0.3),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 5, bottom: 10),
              child: Text(
                'Language',
                style:
                    GoogleFonts.lato(fontWeight: FontWeight.w900, fontSize: 19),
              ),
            ),
            const ListTileRadioWidget(
              language: 'മലയാളം (Malayalam)',
            ),
            const ListTileRadioWidget(
              language: 'العربية (Arabic)',
            ),
            const ListTileRadioWidget(
              language: 'हिन्दी (Hindi)',
            ),
            const ListTileRadioWidget(
              language: 'தமிழ் (Tamil)',
            ),
          ],
        ),
      ),
    );
  }
}
