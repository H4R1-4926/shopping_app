import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/img.dart';
import 'package:shopping_app/Core/size.dart';
import 'package:shopping_app/Presentation/Screens/Orders/Track%20Order/Widget/horizontal_timeline_widget.dart';
import 'package:shopping_app/Presentation/Screens/Orders/Track%20Order/Widget/timeline_tile.dart';

class TrackOrderPage extends StatelessWidget {
  const TrackOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: klightGrey,
        appBar: AppBar(
          backgroundColor: kwhite,
          surfaceTintColor: kwhite,
          title: Text(
            'Track Order',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    color: kwhite, borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(kDemoImg))),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                child: SizedBox(
                                  height: 20,
                                  width: 150,
                                  child: Text(
                                    'Name of Product',
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.lato(
                                        color: kblack,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 12,
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
                                height: 30,
                                width: 216,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '₹ 99999\\-',
                                      style: GoogleFonts.openSans(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    const SizedBox(
                                      width: 10,
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
            ),
            kSizedBoxHeight20,
            const Padding(
              padding: EdgeInsets.only(top: 2),
              child: SizedBox(
                height: 120,
                width: 300,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: HorizontalTmeLineWidget(
                          isFirst: true,
                          isLast: false,
                          isPast: true,
                          startChild: Icon(
                            Icons.inventory_outlined,
                            size: 25,
                          ),
                        ),
                      ),
                      Flexible(
                        child: HorizontalTmeLineWidget(
                          isFirst: false,
                          isLast: false,
                          isPast: true,
                          startChild: Icon(
                            Iconsax.box,
                            size: 25,
                          ),
                        ),
                      ),
                      Flexible(
                        child: HorizontalTmeLineWidget(
                          isFirst: false,
                          isLast: false,
                          isPast: false,
                          startChild: Icon(
                            Iconsax.truck,
                            size: 25,
                          ),
                        ),
                      ),
                      Flexible(
                        child: HorizontalTmeLineWidget(
                          isFirst: false,
                          isLast: true,
                          isPast: false,
                          startChild: Icon(
                            Iconsax.tick_circle,
                            size: 25,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                'Packet In Delivery',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Divider(
              indent: 23,
              endIndent: 23,
              color: kGrey.withOpacity(0.3),
            ),
            kSizedBoxHeight20,
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Order Status Details',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: SizedBox(height: 250, child: VerticalTimeline()),
            ),
            Divider(
              indent: 23,
              endIndent: 23,
              color: kGrey.withOpacity(0.3),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: const WidgetStatePropertyAll(klightGrey),
                      elevation: const WidgetStatePropertyAll(0),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: kblack),
                          borderRadius: BorderRadius.circular(25)))),
                  child: Text(
                    'Cancel Order',
                    style: GoogleFonts.lato(
                        color: kblack, fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ));
  }
}
