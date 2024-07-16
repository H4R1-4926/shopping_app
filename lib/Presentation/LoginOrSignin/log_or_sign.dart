import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/size.dart';
import 'package:shopping_app/Presentation/Login/login.dart';
import 'package:shopping_app/Presentation/Signin/signup.dart';

class LogOrSignIn extends StatelessWidget {
  const LogOrSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              kSizedBoxHeight40,
              Container(
                width: 165,
                height: 165,
                color: kblack,
              ),
              kSizedBoxHeight20,
              Text(
                "Let's you in",
                style: GoogleFonts.poppins(
                    fontSize: 28, fontWeight: FontWeight.bold),
              ),
              kSizedBoxHeight30,
              Container(
                height: 50,
                width: 280,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kwhite,
                    border: Border.all(color: kblack.withOpacity(0.1))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/google_logo.png'))),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Continue with Google',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, color: kblack),
                    ),
                  ],
                ),
              ),
              kSizedBoxHeight30,
              Text(
                'or',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              kSizedBoxHeight30,
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    )),
                child: Container(
                  height: 50,
                  width: 330,
                  decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? kdarkcolor3
                          : kblack,
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                    child: Text(
                      'Sign in with phone',
                      style: GoogleFonts.poppins(
                          color: kwhite, fontWeight: FontWeight.w600),
                    ),
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
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SignUpPage(),
                        ));
                      },
                      child: Text(
                        'Sign up.',
                        style: GoogleFonts.poppins(
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? kwhite
                                    : kblack,
                            fontWeight: FontWeight.w600),
                      ))
                ],
              )
            ],
          ),
        ));
  }
}
