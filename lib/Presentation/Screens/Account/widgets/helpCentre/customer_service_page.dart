import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/size.dart';

class CustomerServicePage extends StatelessWidget {
  const CustomerServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          'contactus.fill'.tr(),
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: TextField(
                maxLength: 30,
                minLines: 1,
                decoration: InputDecoration(
                    counterText: '',
                    hintText: 'contactus.yourname'.tr(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: TextField(
                maxLength: 15,
                minLines: 1,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    counterText: '',
                    hintText: 'contactus.yourphone'.tr(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: TextField(
                maxLength: 300,
                minLines: 5,
                maxLines: 5,
                decoration: InputDecoration(
                    counterText: '',
                    hintText: 'contactus.reason'.tr(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18))),
              ),
            ),
            kSizedBoxHeight30,
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  fixedSize: const WidgetStatePropertyAll(Size(250, 50)),
                  backgroundColor:
                      Theme.of(context).brightness == Brightness.dark
                          ? const WidgetStatePropertyAll(kdarkcolor3)
                          : const WidgetStatePropertyAll(kblack),
                ),
                child: Text(
                  'contactus.submit'.tr(),
                  style: GoogleFonts.lato(
                      color: kwhite, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
