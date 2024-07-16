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
          'Notification',
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ListTileWidget(title: 'General Notification'),
            ListTileWidget(title: 'Sound'),
            ListTileWidget(title: 'Vibrate'),
            ListTileWidget(title: 'Special Offer'),
            ListTileWidget(title: 'App Updates'),
          ],
        ),
      ),
    );
  }
}
