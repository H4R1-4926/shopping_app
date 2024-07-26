import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/size.dart';

import 'package:shopping_app/Presentation/Signin/default_address_input_page.dart';

class ProfileSetUpPage extends StatelessWidget {
  const ProfileSetUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final gender = ['profileFill.male'.tr(), 'profileFill.female'.tr()];
    final TextEditingController genderController =
        TextEditingController(text: 'profileFill.gender'.tr());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'profileFill.fillprofile'.tr(),
          style: GoogleFonts.lato(
              fontWeight: FontWeight.bold,
              fontSize: context.locale.languageCode == 'en' ? 18 : 12),
        ),
      ),
      body: ListView(
        children: [
          kSizedBoxHeight20,
          Center(
            child: CircleAvatar(
              radius: 70,
              backgroundColor: Theme.of(context).brightness == Brightness.dark
                  ? kblack
                  : kwhite,
              backgroundImage: Theme.of(context).brightness == Brightness.dark
                  ? const AssetImage('assets/img/inverted infinity.png')
                  : const AssetImage('assets/img/infinity.png'),
            ),
          ),
          kSizedBoxHeight40,
          kSizedBoxHeight40,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              cursorColor: Theme.of(context).brightness == Brightness.dark
                  ? kwhite
                  : kblack,
              maxLength: 20,
              maxLines: 1,
              autofocus: true,
              style: GoogleFonts.lato(),
              decoration: InputDecoration(
                  focusColor: kblack,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 1.5)),
                  counterText: '',
                  hintStyle: GoogleFonts.lato(),
                  hintText: 'profileFill.firstname'.tr(),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Theme.of(context).brightness == Brightness.dark
                      ? kdarkcolor1
                      : klightGrey),
            ),
          ),
          kSizedBoxHeight30,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              maxLength: 20,
              maxLines: 1,
              autofocus: true,
              style: GoogleFonts.lato(),
              decoration: InputDecoration(
                  focusColor: kblack,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 1.5)),
                  counterText: '',
                  hintStyle: GoogleFonts.lato(),
                  hintText: 'profileFill.lastname'.tr(),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Theme.of(context).brightness == Brightness.dark
                      ? kdarkcolor1
                      : klightGrey),
            ),
          ),
          kSizedBoxHeight30,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: genderController,
              maxLength: 20,
              maxLines: 1,
              readOnly: true,
              style: GoogleFonts.lato(fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                counterText: '',
                hintStyle: GoogleFonts.lato(),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none),
                filled: true,
                fillColor: Theme.of(context).brightness == Brightness.dark
                    ? kdarkcolor1
                    : klightGrey,
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: DropdownButton(
                    underline: const SizedBox(),
                    icon: const Icon(Icons.arrow_drop_down_rounded),
                    iconEnabledColor:
                        Theme.of(context).brightness == Brightness.dark
                            ? kGrey
                            : kblack,
                    iconSize: 32,
                    borderRadius: BorderRadius.circular(18),
                    style: GoogleFonts.lato(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? kwhite
                            : kblack,
                        fontWeight: FontWeight.bold),
                    items: gender
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text(e),
                            ))
                        .toList(),
                    onChanged: (value) {
                      genderController.text = value.toString();

                      log('$value taped');
                    },
                  ),
                ),
              ),
            ),
          ),
          kSizedBoxHeight40,
          kSizedBoxHeight20,
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainAddressAddPage(),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Container(
                height: 55,
                width: 300,
                decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? kdarkcolor1
                        : kblack,
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: Text(
                    'otppage.proceed'.tr(),
                    style: GoogleFonts.poppins(
                        color: kwhite, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
