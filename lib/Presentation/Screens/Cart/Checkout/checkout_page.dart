import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/img.dart';
import 'package:shopping_app/Core/size.dart';
import 'package:shopping_app/Presentation/Screens/Cart/Address/address_change_page.dart';
import 'package:shopping_app/Presentation/Screens/Cart/Shipping/shipping_detail.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? kdarkbackground
          : klightGrey,
      appBar: AppBar(
        title: Text(
          'Checkout',
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: ListView(
        children: [
          kSizedBoxHeight5,
          SizedBox(
            width: double.infinity,
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'Shipping Address',
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.w900,
                      fontSize: 21,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: ListTile(
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
                      trailing: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      const AddressChangePage(),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
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
                          icon: const Icon(Iconsax.edit)),
                      title: Text(
                        'Person Name',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                        ),
                      ),
                      subtitle: Text(
                        'Address',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: GoogleFonts.lato(
                            fontSize: 15, color: kGrey.withOpacity(0.8)),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      tileColor: Theme.of(context).brightness == Brightness.dark
                          ? kdarkcolor1
                          : kwhite,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                )
              ],
            ),
          ),
          kSizedBoxHeight10,
          const Divider(
            indent: 23,
            endIndent: 23,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Order List',
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w900,
                fontSize: 21,
              ),
            ),
          ),
          kSizedBoxHeight10,
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? kdarkcolor1
                          : kwhite,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 108,
                          width: 108,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(kDummyImg))),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 50,
                                  width: 200,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        height: 30,
                                        width: 150,
                                        child: Text(
                                          'Name of Product',
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w900,
                                              fontSize: 17),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    const CircleAvatar(
                                      radius: 15,
                                      backgroundColor: kblack,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Color  |  Qty - 1',
                                      style: GoogleFonts.lato(
                                          fontWeight: FontWeight.bold,
                                          color: kGrey.withOpacity(0.9)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 216,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '₹ 99999\\-',
                                        style: GoogleFonts.openSans(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: 25,
          ),
          const SizedBox(
            height: 100,
          )
        ],
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.dark
                ? kdarkbackground
                : kwhite,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const ShippingPage(),
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
                          ? const WidgetStatePropertyAll(kdarkcolor3)
                          : const WidgetStatePropertyAll(kblack),
                  foregroundColor: const WidgetStatePropertyAll(kwhite),
                  elevation: const WidgetStatePropertyAll(10)),
              child: Text(
                'Continue ➤',
                style: GoogleFonts.lato(
                    color: kwhite, fontWeight: FontWeight.bold, fontSize: 14),
              )),
        ),
      ),
    );
  }
}
