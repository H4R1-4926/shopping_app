// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:easy_localization/easy_localization.dart';
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
          automaticallyImplyLeading: true,
          title: Text(
            'profilepage.helpcentre'.tr(),
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold, fontSize: 20),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'helpcentrepage.faq'.tr(),
              ),
              Tab(
                text: 'helpcentrepage.contactus'.tr(),
              )
            ],
            indicatorColor: Theme.of(context).brightness == Brightness.dark
                ? kwhite
                : kblack,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 10),
            indicatorWeight: 3,
            labelStyle: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Theme.of(context).brightness == Brightness.dark
                  ? kwhite
                  : kblack,
            ),
            unselectedLabelStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: 12, color: kGrey),
          ),
        ),
        body: TabBarView(children: _pages),
      ),
    );
  }
}
