import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/size.dart';
import 'package:shopping_app/Presentation/LoginOrSignin/log_or_sign.dart';
import 'package:shopping_app/Presentation/Screens/Account/Profile%20Screens/edit_address_screen.dart';
import 'package:shopping_app/Presentation/Screens/Account/Profile%20Screens/edit_profile.dart';
import 'package:shopping_app/Presentation/Screens/Account/Profile%20Screens/help_centre.dart';
import 'package:shopping_app/Presentation/Screens/Account/Profile%20Screens/language_change_page.dart';
import 'package:shopping_app/Presentation/Screens/Account/Profile%20Screens/notification_settings.dart';
import 'package:shopping_app/Presentation/Screens/Account/Profile%20Screens/privacy_policy.dart';
import 'package:shopping_app/Presentation/Screens/Account/Profile%20Screens/terms_conditions.dart';
import 'package:shopping_app/Presentation/Screens/Account/Profile%20Screens/theme_settings.dart';

import 'widgets/listtile_widget.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).brightness == Brightness.dark
              ? kdarkbackground
              : kwhite,
          title: Text(
            'Profile',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold, fontSize: 20),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: CircleAvatar(
              backgroundColor: Theme.of(context).brightness == Brightness.dark
                  ? kwhite
                  : kblack,
              radius: 2,
            ),
          ),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const CircleAvatar(
                      backgroundColor: kblack,
                      radius: 55,
                    ),
                    kSizedBoxHeight10,
                    Text(
                      'Person Name',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    Text(
                      '1010101010',
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w600, fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
            Divider(
              indent: 26,
              endIndent: 26,
              color: kGrey.withOpacity(0.3),
            ),
            kSizedBoxHeight10,
            ListTileWidget(
              prefixIcon: Iconsax.user_edit,
              titleText: 'Edit Profile',
              ontap: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const EditProfile(),
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
              trailIcon: true,
            ),
            ListTileWidget(
              prefixIcon: Iconsax.location,
              titleText: 'Address',
              ontap: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const EditAddress(),
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
              trailIcon: true,
            ),
            ListTileWidget(
              prefixIcon: Iconsax.notification,
              titleText: 'Notification',
              ontap: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const NotificationSettings(),
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
              trailIcon: true,
            ),
            ListTileWidget(
              prefixIcon: Iconsax.language_square,
              titleText: 'Language',
              secondText: 'English-(US)',
              ontap: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const LanguageSettings(),
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
              trailIcon: true,
            ),
            ListTileWidget(
              prefixIcon: Iconsax.eye,
              titleText: 'Theme',
              secondText: '(System Default)',
              ontap: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const ThemeSettings(),
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
              trailIcon: true,
            ),
            ListTileWidget(
              prefixIcon: Iconsax.lock,
              titleText: 'Privacy Policy',
              ontap: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const PrivacyPolicyPage(),
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
              trailIcon: true,
            ),
            ListTileWidget(
              prefixIcon: Iconsax.note_21,
              titleText: 'Terms & Conditions',
              ontap: () {
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
              trailIcon: true,
            ),
            ListTileWidget(
              prefixIcon: Iconsax.info_circle,
              titleText: 'Help Centre',
              ontap: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const HelpCentrePage(),
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
              trailIcon: true,
            ),
            ListTileWidget(
              prefixIcon: Iconsax.people,
              titleText: 'Invite Friends',
              ontap: () {
                FlutterShare.share(title: 'Example', text: 'Invite Link');
              },
              trailIcon: true,
            ),
            ListTileWidget(
              prefixIcon: Iconsax.logout,
              iconColour: Colors.red,
              titleText: 'Logout',
              ontap: () {
                showModalBottomSheet(
                  showDragHandle: true,
                  backgroundColor: kwhite,
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 190,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: kwhite,
                          boxShadow: [
                            BoxShadow(
                                color: kwhite,
                                blurRadius: 10,
                                spreadRadius: 10),
                          ],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15))),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              'Logout',
                              style: GoogleFonts.poppins(
                                  color: Colors.red,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          kSizedBoxHeight10,
                          const Divider(
                            indent: 23,
                            endIndent: 23,
                          ),
                          kSizedBoxHeight20,
                          Center(
                            child: Text(
                              'Are you sure you want to logout?',
                              style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.bold, color: kblack),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    style: const ButtonStyle(
                                      surfaceTintColor:
                                          WidgetStatePropertyAll(kwhite),
                                      fixedSize:
                                          WidgetStatePropertyAll(Size(150, 50)),
                                      backgroundColor:
                                          WidgetStatePropertyAll(kwhite),
                                    ),
                                    child: Text(
                                      'Cancel',
                                      style: GoogleFonts.lato(
                                          fontSize: 14,
                                          color: kblack,
                                          fontWeight: FontWeight.w700),
                                    )),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const LogOrSignIn(),
                                          ),
                                          (route) => false);
                                    },
                                    style: const ButtonStyle(
                                        fixedSize: WidgetStatePropertyAll(
                                            Size(150, 50)),
                                        backgroundColor:
                                            WidgetStatePropertyAll(kblack),
                                        foregroundColor:
                                            WidgetStatePropertyAll(kwhite)),
                                    child: Text(
                                      'Yes, Logout',
                                      style: GoogleFonts.lato(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              },
              textColour: Colors.red,
              trailIcon: false,
            ),
            const SizedBox(
              height: 130,
            )
          ],
        ));
  }
}
