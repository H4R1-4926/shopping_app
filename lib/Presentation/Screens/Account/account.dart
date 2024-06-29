import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/size.dart';
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
          surfaceTintColor: kwhite,
          automaticallyImplyLeading: false,
          backgroundColor: kwhite,
          title: Text(
            'Profile',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold, fontSize: 20),
          ),
          leading: const Padding(
            padding: EdgeInsets.only(left: 5),
            child: CircleAvatar(
              backgroundColor: kblack,
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
                // FlutterShare.share(title: 'Example');
              },
              trailIcon: true,
            ),
            ListTileWidget(
              prefixIcon: Iconsax.logout,
              iconColour: Colors.red,
              titleText: 'Log Out',
              ontap: () {},
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
