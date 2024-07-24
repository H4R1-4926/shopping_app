import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Application/First%20Time/first_time_bloc.dart';
import 'package:shopping_app/Application/RadioButton/radio_button_bloc.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/size.dart';
import 'package:shopping_app/Presentation/Login/login.dart';
import 'package:shopping_app/Presentation/Screens/Account/Profile%20Screens/terms_conditions.dart';
import 'package:shopping_app/Presentation/Screens/Account/widgets/radio_listtile.dart';
import 'package:shopping_app/Presentation/Signin/signup.dart';

class LogOrSignIn extends StatelessWidget {
  const LogOrSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<FirstTimeBloc>().add(const OnCheck());
    });
    return BlocListener<FirstTimeBloc, FirstTimeState>(
        listener: (context, state) async {
          if (state.isFirstTime == true) {
            await showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                  backgroundColor:
                      Theme.of(context).brightness == Brightness.dark
                          ? kdarkbackground
                          : kwhite,
                  title: Text(
                    'languagepage.selectLanguage'.tr(),
                    style: GoogleFonts.lato(fontWeight: FontWeight.bold),
                  ),
                  content: BlocBuilder<RadioButtonBloc, RadioButtonState>(
                    builder: (context, state) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15, top: 5, bottom: 10),
                            child: Text(
                              'languagepage.suggested'.tr(),
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w900, fontSize: 19),
                            ),
                          ),
                          ListTileRadioWidget(
                            language: 'English (US)',
                            value: 1,
                            groupValue: state.value,
                            onChanged: (int? value) {
                              context.read<RadioButtonBloc>().add(
                                  RadioButtonEvent.onClicked(value: value!));
                            },
                          ),
                          ListTileRadioWidget(
                            language: 'English (UK)',
                            value: 2,
                            groupValue: state.value,
                            onChanged: (int? value) {
                              context.read<RadioButtonBloc>().add(
                                  RadioButtonEvent.onClicked(value: value!));
                            },
                          ),
                          Divider(
                            indent: 25,
                            endIndent: 25,
                            color: kGrey.withOpacity(0.3),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15, top: 5, bottom: 10),
                            child: Text(
                              'languagepage.otherslanguages'.tr(),
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w900, fontSize: 19),
                            ),
                          ),
                          ListTileRadioWidget(
                            language: 'മലയാളം (Malayalam)',
                            value: 3,
                            groupValue: state.value,
                            onChanged: (int? value) {
                              context.read<RadioButtonBloc>().add(
                                  RadioButtonEvent.onClicked(value: value!));
                            },
                          ),
                          ListTileRadioWidget(
                            language: 'العربية (Arabic)',
                            value: 4,
                            groupValue: state.value,
                            onChanged: (int? value) {
                              context.read<RadioButtonBloc>().add(
                                  RadioButtonEvent.onClicked(value: value!));
                            },
                          ),
                          ListTileRadioWidget(
                            language: 'हिन्दी (Hindi)',
                            value: 5,
                            groupValue: state.value,
                            onChanged: (int? value) {
                              context.read<RadioButtonBloc>().add(
                                  RadioButtonEvent.onClicked(value: value!));
                            },
                          ),
                          ListTileRadioWidget(
                            language: 'தமிழ் (Tamil)',
                            value: 6,
                            groupValue: state.value,
                            onChanged: (int? value) {
                              context.read<RadioButtonBloc>().add(
                                  RadioButtonEvent.onClicked(value: value!));
                            },
                          ),
                          kSizedBoxHeight10,
                          Center(
                            child: ElevatedButton(
                                onPressed: () {
                                  if (state.value == 1) {
                                    context.setLocale(const Locale('en', 'US'));
                                  } else if (state.value == 3) {
                                    context.setLocale(const Locale('ml', 'IN'));
                                  }
                                  Navigator.pop(context);
                                },
                                style: ButtonStyle(
                                    fixedSize: const WidgetStatePropertyAll(
                                        Size(250, 40)),
                                    backgroundColor: WidgetStatePropertyAll(
                                        Theme.of(context).brightness ==
                                                Brightness.dark
                                            ? kdarkcolor3
                                            : kblack)),
                                child: Text(
                                  'select'.tr(),
                                  style: GoogleFonts.openSans(
                                      color: kwhite,
                                      fontWeight: FontWeight.bold),
                                )),
                          )
                        ],
                      );
                    },
                  ),
                );
              },
            );
          }
        },
        child: Scaffold(
            appBar: AppBar(),
            body: Column(
              children: [
                kSizedBoxHeight40,
                Container(
                  width: context.locale.languageCode == 'en' ? 165 : 144,
                  height: context.locale.languageCode == 'en' ? 165 : 144,
                  color: kblack,
                ),
                kSizedBoxHeight20,
                Text(
                  "logorsignin.letyouin".tr(),
                  style: GoogleFonts.poppins(
                      fontSize: context.locale.languageCode == 'en' ? 28 : 24,
                      fontWeight: FontWeight.bold),
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
                                image:
                                    AssetImage('assets/img/google_logo.png'))),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "logorsignin.google".tr(),
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, color: kblack),
                      ),
                    ],
                  ),
                ),
                kSizedBoxHeight30,
                Text(
                  "logorsignin.or".tr(),
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
                        "logorsignin.signinwithphone".tr(),
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
                      "logorsignin.donthaveanaccount".tr(),
                      style: GoogleFonts.poppins(color: Colors.grey),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SignUpPage(),
                          ));
                        },
                        child: Text(
                          "logorsignin.signup".tr(),
                          style: GoogleFonts.poppins(
                              color: Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? kwhite
                                  : kblack,
                              fontWeight: FontWeight.w600),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  "logorsignin.byContinuing".tr(),
                  style: GoogleFonts.poppins(color: kGrey),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const TermsAndConditions(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          var tween = Tween(
                            begin: const Offset(1.0, 0.0),
                            end: Offset.zero,
                          ).chain(CurveTween(curve: Curves.easeIn));
                          return SlideTransition(
                            position: animation.drive(tween),
                            child: child,
                          );
                        },
                      ));
                    },
                    child: Text(
                      "logorsignin.termsandcondition".tr(),
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            )));
  }
}
