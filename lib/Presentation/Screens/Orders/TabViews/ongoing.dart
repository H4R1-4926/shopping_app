import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/img.dart';
import 'package:shopping_app/Presentation/Screens/Orders/Track%20Order/track_order_page.dart';

class OrderOnGoing extends StatelessWidget {
  const OrderOnGoing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: klightGrey,
        body: ListView(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 20,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
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
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                            fontSize: 16),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const CircleAvatar(
                                        radius: 13,
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
                                  Container(
                                    height: 25,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        color: kGrey.withOpacity(0.3),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Center(
                                      child: Text(
                                        'In Delivery',
                                        style:
                                            GoogleFonts.openSans(fontSize: 12),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                    width: 216,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '₹ 99999\\-',
                                          style: GoogleFonts.openSans(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 15),
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.of(context)
                                                    .push(PageRouteBuilder(
                                                  pageBuilder: (context,
                                                          animation,
                                                          secondaryAnimation) =>
                                                      const TrackOrderPage(),
                                                  transitionsBuilder: (context,
                                                      animation,
                                                      secondaryAnimation,
                                                      child) {
                                                    var tween = Tween(
                                                      begin: const Offset(
                                                          1.0, 0.0),
                                                      end: Offset.zero,
                                                    ).chain(CurveTween(
                                                        curve: Curves.easeIn));
                                                    return SlideTransition(
                                                      position: animation
                                                          .drive(tween),
                                                      child: child,
                                                    );
                                                  },
                                                ));
                                              },
                                              child: Container(
                                                height: 44,
                                                width: 72,
                                                decoration: BoxDecoration(
                                                    color: kblack,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                child: Center(
                                                  child: Text(
                                                    'Track',
                                                    style: GoogleFonts.lato(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 14,
                                                        color: kwhite),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
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
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ));
  }
}
