import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Presentation/Screens/Account/widgets/helpCentre/customer_service_page.dart';
import 'package:shopping_app/Presentation/Screens/Account/widgets/helpCentre/widget/contact_widgets.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? kdarkbackground
          : klightGrey,
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    const CustomerServicePage(),
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
            child: ContactWidgets(
              text: 'contactus.customerservice'.tr(),
              icon: Icons.headset_mic_outlined,
            ),
          ),
          ContactWidgets(
            text: 'contactus.whatsapp'.tr(),
            icon: FontAwesomeIcons.whatsapp,
          ),
          ContactWidgets(
            text: 'contactus.instagram'.tr(),
            icon: FontAwesomeIcons.instagram,
          ),
        ],
      ),
    );
  }
}
