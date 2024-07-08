import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/img.dart';
import 'package:shopping_app/Core/size.dart';

class OrderCompleted extends StatelessWidget {
  const OrderCompleted({super.key});

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
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
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
                                  Container(
                                    height: 25,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        color: kGrey.withOpacity(0.3),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Center(
                                      child: Text(
                                        'Completed',
                                        style:
                                            GoogleFonts.openSans(fontSize: 12),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        height: 30,
                                        width: 100,
                                        child: Text(
                                          '₹ 99999\\-',
                                          style: GoogleFonts.openSans(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                      Flexible(
                                          child: ElevatedButton(
                                        style: const ButtonStyle(
                                            foregroundColor:
                                                WidgetStatePropertyAll(kblack),
                                            backgroundColor:
                                                WidgetStatePropertyAll(
                                                    klightGrey)),
                                        child: Text(
                                          'Return Item',
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                        onPressed: () {},
                                      )),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          kSizedBoxHeight10
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
