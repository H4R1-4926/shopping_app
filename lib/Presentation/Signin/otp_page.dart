import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/size.dart';
import 'package:shopping_app/Presentation/Signin/profile_setup.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 25),
            child: Text(
              'Enter Otp',
              style:
                  GoogleFonts.inter(fontSize: 45, fontWeight: FontWeight.bold),
            ),
          ),
          kSizedBoxHeight40,
          OtpTextField(
            textStyle: GoogleFonts.lato(fontSize: 20),
            showFieldAsBox: true,
            focusedBorderColor: kblack,
            cursorColor: kblack,
            borderRadius: BorderRadius.circular(17),
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            fieldWidth: 55,
            filled: true,
            fillColor: kdarkcolor3,
            numberOfFields: 4,
            autoFocus: true,
          ),
          kSizedBoxHeight10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  '00:59',
                  style: GoogleFonts.poppins(fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Text(
                  'Resend Otp',
                  style: GoogleFonts.poppins(fontSize: 15),
                ),
              )
            ],
          ),
          kSizedBoxHeight40,
          kSizedBoxHeight30,
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileSetUpPage(),
                )),
            child: Center(
              child: Container(
                height: 55,
                width: 300,
                decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? kdarkcolor3
                        : kblack,
                    borderRadius: BorderRadius.circular(25)),
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
