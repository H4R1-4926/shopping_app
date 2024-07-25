import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/size.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController genderController =
        TextEditingController(text: 'Male');

    final gender = ['profileFill.male'.tr(), 'profileFill.female'.tr()];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? kdarkbackground
            : kwhite,
        automaticallyImplyLeading: true,
        surfaceTintColor: Theme.of(context).brightness == Brightness.dark
            ? kdarkbackground
            : kwhite,
        title: Text(
          'profilepage.editprofile'.tr(),
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: context.locale.languageCode == 'en' ? 20 : 17),
        ),
      ),
      body: ListView(
        children: [
          kSizedBoxHeight40,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              cursorColor: Theme.of(context).brightness == Brightness.dark
                  ? kwhite
                  : kblack,
              maxLength: 20,
              maxLines: 1,
              initialValue: 'Person',
              style: GoogleFonts.lato(fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                  focusColor: kblack,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 1.5)),
                  counterText: '',
                  hintStyle: GoogleFonts.lato(),
                  hintText: 'First Name',
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
              cursorColor: kblack,
              maxLength: 20,
              maxLines: 1,
              initialValue: 'Name',
              style: GoogleFonts.lato(fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                  focusColor: kblack,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 1.5)),
                  counterText: '',
                  hintStyle: GoogleFonts.lato(),
                  hintText: 'Last Name',
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
                            ? kwhite
                            : kblack,
                    iconSize: 32,
                    borderRadius: BorderRadius.circular(18),
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).brightness == Brightness.dark
                            ? kwhite
                            : kblack),
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
        ],
      ),
      bottomSheet: Container(
          color: Theme.of(context).brightness == Brightness.dark
              ? kdarkbackground
              : kwhite,
          height: 100,
          child: Center(
              child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ButtonStyle(
                elevation: const WidgetStatePropertyAll(8),
                backgroundColor: Theme.of(context).brightness == Brightness.dark
                    ? const WidgetStatePropertyAll(kdarkcolor3)
                    : const WidgetStatePropertyAll(kblack),
                fixedSize: const WidgetStatePropertyAll(Size(300, 55))),
            child: Text(
              'apply'.tr(),
              style: GoogleFonts.lato(
                  color: kwhite, fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ))),
    );
  }
}
