import 'package:easy_localization/easy_localization.dart';
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
            'profilepage.profile'.tr(),
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
              titleText: 'profilepage.editprofile'.tr(),
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
              titleText: 'profilepage.address'.tr(),
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
              titleText: 'profilepage.notification'.tr(),
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
              titleText: 'profilepage.language'.tr(),
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
              titleText: 'profilepage.theme'.tr(),
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
              titleText: 'profilepage.privacypolicy'.tr(),
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
              titleText: 'profilepage.termsandcondition'.tr(),
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
              titleText: 'profilepage.helpcentre'.tr(),
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
              titleText: 'profilepage.invite'.tr(),
              ontap: () {
                FlutterShare.share(title: 'Example', text: 'Invite Link');
              },
              trailIcon: true,
            ),
            ListTileWidget(
              prefixIcon: Iconsax.logout,
              iconColour: Colors.red,
              titleText: 'profilepage.logout'.tr(),
              ontap: () {
                showModalBottomSheet(
                  showDragHandle: true,
                  backgroundColor:
                      Theme.of(context).brightness == Brightness.dark
                          ? kdarkbackground
                          : kwhite,
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 190,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Theme.of(context).brightness == Brightness.dark
                              ? kdarkbackground
                              : kwhite,
                          boxShadow: [
                            BoxShadow(
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? kdarkbackground
                                    : kwhite,
                                blurRadius: 10,
                                spreadRadius: 10),
                          ],
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15))),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              'profilepage.logout'.tr(),
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
                              'logoutpopup.sure'.tr(),
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.bold,
                              ),
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
                                      'logoutpopup.cancel'.tr(),
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
                                    style: ButtonStyle(
                                        fixedSize: const WidgetStatePropertyAll(
                                            Size(150, 50)),
                                        backgroundColor:
                                            Theme.of(context).brightness ==
                                                    Brightness.dark
                                                ? const WidgetStatePropertyAll(
                                                    kdarkcolor3)
                                                : const WidgetStatePropertyAll(
                                                    kblack),
                                        foregroundColor:
                                            const WidgetStatePropertyAll(
                                                kwhite)),
                                    child: Text(
                                      'logoutpopup.yes'.tr(),
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
