// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Presentation/Screens/Account/widgets/helpCentre/contact_page.dart';
import 'package:shopping_app/Presentation/Screens/Account/widgets/helpCentre/faq_page.dart';

class HelpCentrePage extends StatelessWidget {
  const HelpCentrePage({super.key});

  @override
  Widget build(BuildContext context) {
    final _pages = [const FAQPage(), const ContactPage()];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: kwhite,
          automaticallyImplyLeading: true,
          backgroundColor: kwhite,
          title: Text(
            'Help Centre',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold, fontSize: 20),
          ),
          bottom: TabBar(
            tabs: const [
              Tab(
                text: 'FAQ',
              ),
              Tab(
                text: 'Contact us',
              )
            ],
            indicatorColor: kblack,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 10),
            indicatorWeight: 3,
            labelStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.bold, fontSize: 14, color: kblack),
            unselectedLabelStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 12, color: kGrey),
          ),
        ),
        body: TabBarView(children: _pages),
      ),
    );
  }
}
