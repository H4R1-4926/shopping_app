import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/size.dart';
import 'package:shopping_app/Presentation/Screens/Cart/Payment/payment_page.dart';

class RecieptPage extends StatelessWidget {
  const RecieptPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: klightGrey,
      appBar: AppBar(
        backgroundColor: kwhite,
        surfaceTintColor: kwhite,
        title: Text(
          'Overview',
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Shipping Address',
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.w900, fontSize: 21, color: kblack),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: ListTile(
              tileColor: kwhite,
              leading: CircleAvatar(
                backgroundColor: kGrey.withOpacity(0.4),
                radius: 34,
                child: const CircleAvatar(
                  radius: 21,
                  backgroundColor: kblack,
                  child: Icon(
                    Iconsax.location5,
                    color: kwhite,
                  ),
                ),
              ),
              title: Text(
                'Person Name',
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.w900, fontSize: 18, color: kblack),
              ),
              subtitle: Text(
                'Address',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: GoogleFonts.lato(
                    fontSize: 15, color: kGrey.withOpacity(0.8)),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Shipping Method',
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.w900, fontSize: 21, color: kblack),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: ListTile(
              tileColor: kwhite,
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
              title: Text(
                'Delivery',
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.w900, fontSize: 18, color: kblack),
              ),
              subtitle: Text(
                'Time',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: GoogleFonts.lato(
                    fontSize: 15, color: kGrey.withOpacity(0.8)),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          const Divider(
            indent: 28,
            endIndent: 28,
          ),
          kSizedBoxHeight20,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Container(
              height: 270,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: kwhite, borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Amount',
                          style: GoogleFonts.lato(color: kGrey, fontSize: 18),
                        ),
                        Text(
                          '₹ 999\\-',
                          style: GoogleFonts.openSans(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'GST',
                          style: GoogleFonts.lato(color: kGrey, fontSize: 18),
                        ),
                        Text(
                          '₹ 999\\-',
                          style: GoogleFonts.openSans(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    indent: 28,
                    endIndent: 28,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '₹ 999\\-',
                          style: GoogleFonts.openSans(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shipping Charge',
                          style: GoogleFonts.lato(color: kGrey, fontSize: 18),
                        ),
                        Text(
                          '₹ 999\\-',
                          style: GoogleFonts.openSans(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    indent: 28,
                    endIndent: 28,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Amount',
                          style: GoogleFonts.lato(color: kGrey, fontSize: 18),
                        ),
                        Text(
                          '₹ 999\\-',
                          style: GoogleFonts.openSans(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          )
        ],
      ),
      bottomSheet: Container(
        height: 80,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: kwhite,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const PaymentPage(),
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
              style: const ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(Size(300, 50)),
                  backgroundColor: MaterialStatePropertyAll(kblack),
                  foregroundColor: MaterialStatePropertyAll(kwhite)),
              child: Text(
                'Payment ➤',
                style:
                    GoogleFonts.lato(fontWeight: FontWeight.w900, fontSize: 16),
              )),
        ),
      ),
    );
  }
}
