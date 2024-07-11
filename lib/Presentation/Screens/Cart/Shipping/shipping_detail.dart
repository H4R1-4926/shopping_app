import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Presentation/Screens/Cart/Recipt%20Page/reciept_page.dart';

class ShippingPage extends StatelessWidget {
  const ShippingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Theme.of(context).brightness == Brightness.dark ? kblack : klightGrey,
      appBar: AppBar(
        title: Text(
          'Choose Shipping',
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: ListTile(
              tileColor: Theme.of(context).brightness == Brightness.dark
                  ? const Color.fromARGB(221, 32, 32, 32)
                  : kwhite,
              leading: CircleAvatar(
                backgroundColor: kGrey.withOpacity(0.4),
                radius: 34,
                child: const CircleAvatar(
                  radius: 21,
                  backgroundColor: kblack,
                  child: Icon(
                    Iconsax.box,
                    color: kwhite,
                  ),
                ),
              ),
              trailing: Radio(
                value: 1,
                groupValue: 1,
                onChanged: (value) {},
                activeColor: Theme.of(context).brightness == Brightness.dark
                    ? kwhite
                    : kblack,
                fillColor: Theme.of(context).brightness == Brightness.dark
                    ? const WidgetStatePropertyAll(kwhite)
                    : const WidgetStatePropertyAll(kblack),
                splashRadius: 25,
                visualDensity: VisualDensity.comfortable,
              ),
              title: Text(
                'Delivary Mode',
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w900,
                  fontSize: 17,
                ),
              ),
              subtitle: Row(
                children: [
                  Text(
                    'Reach Time',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.lato(
                        fontSize: 15, color: kGrey.withOpacity(0.8)),
                  ),
                ],
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          );
        },
        itemCount: 4,
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.dark
                ? const Color.fromARGB(255, 59, 59, 59)
                : kwhite,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const RecieptPage(),
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
              style: ButtonStyle(
                  fixedSize: const WidgetStatePropertyAll(Size(310, 60)),
                  backgroundColor:
                      Theme.of(context).brightness == Brightness.dark
                          ? const WidgetStatePropertyAll(
                              Color.fromARGB(255, 84, 84, 84))
                          : const WidgetStatePropertyAll(kblack),
                  foregroundColor: const WidgetStatePropertyAll(kwhite),
                  elevation: const WidgetStatePropertyAll(10)),
              child: Text(
                'Continue To Payment ➤',
                style: GoogleFonts.lato(
                    color: kwhite, fontWeight: FontWeight.bold, fontSize: 14),
              )),
        ),
      ),
    );
  }
}
