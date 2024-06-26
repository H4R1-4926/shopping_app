import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/size.dart';
import 'package:shopping_app/Presentation/Login/login.dart';
import 'package:shopping_app/Presentation/Signin/otp_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kwhite,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 15),
            child: Text(
              'Create Your Account',
              style: GoogleFonts.inter(
                  color: kblack, fontSize: 47, fontWeight: FontWeight.bold),
            ),
          ),
          kSizedBoxHeight40,
          kSizedBoxHeight20,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              cursorColor: kblack,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  focusColor: kblack,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 1.5)),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 20, right: 15),
                    child: Icon(Icons.phone_outlined),
                  ),
                  prefixIconColor: Colors.grey,
                  hintText: 'Phone',
                  hintStyle: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 120, 119, 119),
                      fontWeight: FontWeight.bold),
                  fillColor: Color.fromARGB(255, 247, 247, 247),
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
          kSizedBoxHeight40,
          kSizedBoxHeight30,
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OtpPage(),
                )),
            child: Center(
              child: Container(
                height: 55,
                width: 300,
                decoration: BoxDecoration(
                    color: kblack, borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: Text(
                    'Send Otp',
                    style: GoogleFonts.poppins(
                        color: kwhite, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Center(
            child: Text(
              'or continue with',
              style: GoogleFonts.poppins(color: Colors.grey),
            ),
          ),
          kSizedBoxHeight40,
          Center(
            child: Container(
              height: 60,
              width: 100,
              decoration: BoxDecoration(
                  color: kwhite,
                  borderRadius: BorderRadius.circular(10),
                  border:
                      Border.all(color: Color.fromARGB(255, 237, 237, 237))),
              child: Image.asset(
                'assets/google_logo.png',
                scale: 80,
              ),
            ),
          ),
          kSizedBoxHeight40,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: GoogleFonts.poppins(color: Colors.grey),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ));
                  },
                  child: Text(
                    'Sign in.',
                    style: GoogleFonts.poppins(
                        color: kblack, fontWeight: FontWeight.w600),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
