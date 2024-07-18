import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Application/First%20Time/first_time_bloc.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/size.dart';
import 'package:shopping_app/Presentation/Login/login.dart';
import 'package:shopping_app/Presentation/Screens/Account/Profile%20Screens/terms_conditions.dart';
import 'package:shopping_app/Presentation/Signin/signup.dart';

class LogOrSignIn extends StatelessWidget {
  const LogOrSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<FirstTimeBloc>().add(const OnCheck());
    });
    return BlocListener<FirstTimeBloc, FirstTimeState>(
        listener: (context, state) {
          if (state.isFirstTime == true) {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  backgroundColor:
                      Theme.of(context).brightness == Brightness.dark
                          ? kdarkbackground
                          : kwhite,
                  title: Text(
                    'Select Language',
                    style: GoogleFonts.lato(),
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        title: Text('English'),
                        onTap: () {},
                      ),
                      ListTile(
                        title: Text('Malayalam'),
                        onTap: () {},
                      ),
                    ],
                  ),
                );
              },
            );
          }
        },
        child: Scaffold(
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
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? kwhite
                                    : kblack,
                                fontWeight: FontWeight.w600),
                          ))
                    ],
                  ),
                  const Flexible(
                    child: SizedBox(
                      height: 130,
                    ),
                  ),
                  Text(
                    'By Continuing you\'ll also accept our',
                    style: GoogleFonts.poppins(color: kGrey),
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor:
                                Theme.of(context).brightness == Brightness.dark
                                    ? kdarkbackground
                                    : kwhite,
                            title: Text(
                              'Select Language',
                              style: GoogleFonts.lato(),
                            ),
                            content: BlocBuilder<FirstTimeBloc, FirstTimeState>(
                              builder: (context, state) {
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    ListTile(
                                      title: Text('English'),
                                      onTap: () {},
                                    ),
                                    ListTile(
                                      title: Text('Malayalam'),
                                      onTap: () {},
                                    ),
                                  ],
                                );
                              },
                            ),
                          );
                        },
                      );
                      // Navigator.of(context).push(PageRouteBuilder(
                      //   pageBuilder: (context, animation, secondaryAnimation) =>
                      //       const TermsAndConditions(),
                      //   transitionsBuilder:
                      //       (context, animation, secondaryAnimation, child) {
                      //     var tween = Tween(
                      //       begin: const Offset(1.0, 0.0),
                      //       end: Offset.zero,
                      //     ).chain(CurveTween(curve: Curves.easeIn));
                      //     return SlideTransition(
                      //       position: animation.drive(tween),
                      //       child: child,
                      //     );
                      //   },
                      // ));
                    },
                    child: Text(
                      'Terms and Condition',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
