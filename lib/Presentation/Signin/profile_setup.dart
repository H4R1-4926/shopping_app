import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/size.dart';

import 'package:shopping_app/Presentation/Signin/default_address_input_page.dart';

class ProfileSetUpPage extends StatelessWidget {
  const ProfileSetUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final gender = ['Male', 'Female'];
    final TextEditingController genderController =
        TextEditingController(text: 'Gender');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fill your profile',
          style: GoogleFonts.lato(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          kSizedBoxHeight20,
          const Center(
            child: CircleAvatar(
              radius: 70,
              backgroundColor: kblack,
            ),
          ),
          kSizedBoxHeight40,
          kSizedBoxHeight40,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              cursorColor: kblack,
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
                  hintText: 'First Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 243, 243, 243)),
            ),
          ),
          kSizedBoxHeight30,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              cursorColor: kblack,
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
                  hintText: 'Last Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 243, 243, 243)),
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
                fillColor: const Color.fromARGB(255, 243, 243, 243),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: DropdownButton(
                    underline: const SizedBox(),
                    icon: const Icon(Icons.arrow_drop_down_rounded),
                    iconEnabledColor: kblack,
                    iconSize: 32,
                    borderRadius: BorderRadius.circular(18),
                    style: GoogleFonts.lato(
                        color: kblack, fontWeight: FontWeight.bold),
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
                    color: kblack, borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: Text(
                    'Proceed',
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
