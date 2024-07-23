import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Presentation/Screens/Account/widgets/titile_desc_widget.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          'Terms & Conditions',
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            children: [
              TitleAndDescWidget(
                title: 'termsandconditionpage.t1-1'.tr(),
                description: 'termsandconditionpage.t1-2'.tr(),
              ),
              TitleAndDescWidget(
                title: 'termsandconditionpage.t2-1'.tr(),
                description: 'termsandconditionpage.t2-2'.tr(),
              ),
              TitleAndDescWidget(
                title: 'termsandconditionpage.t3-1'.tr(),
                description: 'termsandconditionpage.t3-2'.tr(),
              ),
              TitleAndDescWidget(
                title: 'termsandconditionpage.t4-1'.tr(),
                description: 'termsandconditionpage.t4-2'.tr(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
