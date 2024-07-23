import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Presentation/Screens/Account/widgets/titile_desc_widget.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          'profilepage.privacypolicy'.tr(),
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleAndDescWidget(
                title: 'privacypage.introduction'.tr(),
                description: 'privacypage.introsentence'.tr(),
              ),
              TitleAndDescWidget(
                title: 'privacypage.typesofdata'.tr(),
                description: 'privacypage.datasentence'.tr(),
              ),
              TitleAndDescWidget(
                title: 'privacypage.useofpersonal'.tr(),
                description: 'privacypage.personaldatasentence'.tr(),
              ),
              TitleAndDescWidget(
                title: 'privacypage.disclosure'.tr(),
                description: 'privacypage.disclosureSentence'.tr(),
              ),
              TitleAndDescWidget(
                title: 'privacypage.datasecurity'.tr(),
                description: 'privacypage.datasecuritysentence'.tr(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
