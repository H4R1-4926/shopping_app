import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';

import '../widgets/switch_widget.dart';

class NotificationSettings extends StatelessWidget {
  const NotificationSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Theme.of(context).brightness == Brightness.dark
            ? kdarkbackground
            : kwhite,
        automaticallyImplyLeading: true,
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? kdarkbackground
            : kwhite,
        title: Text(
          'profilepage.notification'.tr(),
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTileWidget(title: 'notificationpage.genaralnoti'.tr()),
            ListTileWidget(title: 'notificationpage.sound'.tr()),
            ListTileWidget(title: 'notificationpage.vibrate'.tr()),
            ListTileWidget(title: 'notificationpage.specialoffer'.tr()),
            ListTileWidget(title: 'notificationpage.appupdates'.tr()),
          ],
        ),
      ),
    );
  }
}
