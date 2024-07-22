import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/size.dart';
import 'package:shopping_app/Presentation/LoginOrSignin/log_or_sign.dart';
import 'package:shopping_app/Presentation/Signin/otp_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LogOrSignIn(),
                    ),
                    (route) => false);
              },
              icon: const Icon(Icons.arrow_back_outlined)),
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 15),
            child: Text(
              'Login To Your Account',
              style:
                  GoogleFonts.inter(fontSize: 45, fontWeight: FontWeight.bold),
            ),
          ),
          kSizedBoxHeight40,
          kSizedBoxHeight30,
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
                  fillColor: Theme.of(context).brightness == Brightness.dark
                      ? kdarkcolor3
                      : klightGrey,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
          kSizedBoxHeight40,
          kSizedBoxHeight30,
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OtpPage(),
                    ));
              },
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
                    'Sign In',
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
                  border: Border.all(
                      color: const Color.fromARGB(255, 237, 237, 237))),
              child: Image.asset(
                'assets/img/google_logo.png',
                scale: 80,
              ),
            ),
          ),
          kSizedBoxHeight40,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: GoogleFonts.poppins(color: Colors.grey),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Sign up.',
                    style: GoogleFonts.poppins(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? kwhite
                            : kblack,
                        fontWeight: FontWeight.w600),
                  ))
            ],
          )
        ]));
  }
}
