import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/img.dart';
import 'package:shopping_app/Core/size.dart';
import 'package:shopping_app/Presentation/Screens/Cart/Checkout/checkout_page.dart';

import '../Home/Search/search_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: klightGrey,
        appBar: AppBar(
          surfaceTintColor: kwhite,
          title: Text(
            'My Cart',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold, fontSize: 22),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const SearchPage(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                  ));
                },
                icon: const Icon(
                  Icons.search_outlined,
                  size: 28,
                  color: kGrey,
                ))
          ],
          bottom: PreferredSize(
              preferredSize: const Size(double.infinity, 80),
              child: SizedBox(
                height: 80,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Total price',
                                style: GoogleFonts.lato(
                                    fontSize: 13, color: kGrey)),
                            Text(
                              '₹ 999\\-',
                              style: GoogleFonts.openSans(
                                  fontSize: 35, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    const CheckoutPage(),
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
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(kblack),
                            fixedSize: MaterialStatePropertyAll(Size(230, 55))),
                        child: Text(
                          'Checkout  ➤',
                          style: GoogleFonts.lato(
                              color: kwhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
              )),
          leading: const Padding(
            padding: EdgeInsets.only(left: 5),
            child: CircleAvatar(
              backgroundColor: kblack,
              radius: 2,
            ),
          ),
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 90),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Container(
                  height: 170,
                  decoration: BoxDecoration(
                      color: kwhite, borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 115,
                          width: 115,
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
                            padding: const EdgeInsets.symmetric(vertical: 18),
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
                                              color: kblack,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 18),
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                            showDragHandle: true,
                                            backgroundColor: klightGrey,
                                            context: context,
                                            builder: (context) {
                                              return Container(
                                                height: 380,
                                                width: double.infinity,
                                                decoration: const BoxDecoration(
                                                    color: klightGrey,
                                                    boxShadow: [
                                                      BoxShadow(
                                                          color: klightGrey,
                                                          blurRadius: 10,
                                                          spreadRadius: 10)
                                                    ]),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      'Remove from Cart?',
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              fontSize: 23,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                    ),
                                                    kSizedBoxHeight10,
                                                    Divider(
                                                      indent: 23,
                                                      endIndent: 23,
                                                      color: kGrey
                                                          .withOpacity(0.2),
                                                    ),
                                                    kSizedBoxHeight10,
                                                    Container(
                                                      height: 210,
                                                      width: double.infinity,
                                                      color: klightGrey,
                                                      child: Center(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                      10,
                                                                  vertical: 20),
                                                          child: Container(
                                                            height: 170,
                                                            decoration: BoxDecoration(
                                                                color: kwhite,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20)),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          10),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Container(
                                                                    height: 115,
                                                                    width: 115,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                20),
                                                                        image: const DecorationImage(
                                                                            fit:
                                                                                BoxFit.cover,
                                                                            image: NetworkImage(kDemoImg))),
                                                                  ),
                                                                  const SizedBox(
                                                                    width: 20,
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                        .symmetric(
                                                                        vertical:
                                                                            18),
                                                                    child:
                                                                        Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        SizedBox(
                                                                          height:
                                                                              50,
                                                                          width:
                                                                              200,
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              SizedBox(
                                                                                height: 30,
                                                                                width: 150,
                                                                                child: Text(
                                                                                  'Name of Product',
                                                                                  overflow: TextOverflow.ellipsis,
                                                                                  style: GoogleFonts.lato(color: kblack, fontWeight: FontWeight.w900, fontSize: 18),
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
                                                                              'Color',
                                                                              style: GoogleFonts.lato(fontWeight: FontWeight.bold),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        SizedBox(
                                                                          height:
                                                                              50,
                                                                          width:
                                                                              216,
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                '₹ 99999\\-',
                                                                                style: GoogleFonts.openSans(fontWeight: FontWeight.bold, fontSize: 18),
                                                                              ),
                                                                              const SizedBox(
                                                                                width: 20,
                                                                              ),
                                                                              Row(
                                                                                children: [
                                                                                  Container(
                                                                                    height: 35,
                                                                                    width: 35,
                                                                                    decoration: const BoxDecoration(color: klightGrey, borderRadius: BorderRadius.only(topLeft: Radius.circular(25), bottomLeft: Radius.circular(25))),
                                                                                    child: Center(
                                                                                      child: Text(
                                                                                        '-',
                                                                                        style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 20, color: kGrey),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Container(
                                                                                    height: 35,
                                                                                    width: 35,
                                                                                    color: klightGrey,
                                                                                    child: Center(
                                                                                      child: Text(
                                                                                        '1',
                                                                                        style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 20, color: kblack),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Container(
                                                                                    height: 35,
                                                                                    width: 35,
                                                                                    decoration: const BoxDecoration(color: klightGrey, borderRadius: BorderRadius.only(topRight: Radius.circular(25), bottomRight: Radius.circular(25))),
                                                                                    child: Center(
                                                                                      child: Text(
                                                                                        '+',
                                                                                        style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 20, color: kGrey),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              )
                                                                            ],
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Divider(
                                                      indent: 23,
                                                      endIndent: 23,
                                                      color: kGrey
                                                          .withOpacity(0.2),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 10),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          ElevatedButton(
                                                              onPressed: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                              style:
                                                                  const ButtonStyle(
                                                                surfaceTintColor:
                                                                    MaterialStatePropertyAll(
                                                                        kwhite),
                                                                fixedSize:
                                                                    MaterialStatePropertyAll(
                                                                        Size(
                                                                            180,
                                                                            60)),
                                                                backgroundColor:
                                                                    MaterialStatePropertyAll(
                                                                        kwhite),
                                                              ),
                                                              child: Text(
                                                                'Cancel',
                                                                style: GoogleFonts
                                                                    .lato(
                                                                        fontSize:
                                                                            16,
                                                                        color:
                                                                            kblack),
                                                              )),
                                                          ElevatedButton(
                                                              onPressed: () {},
                                                              style: const ButtonStyle(
                                                                  fixedSize:
                                                                      MaterialStatePropertyAll(Size(
                                                                          180,
                                                                          60)),
                                                                  backgroundColor:
                                                                      MaterialStatePropertyAll(
                                                                          kblack),
                                                                  foregroundColor:
                                                                      MaterialStatePropertyAll(
                                                                          kwhite)),
                                                              child: Text(
                                                                'Yes, Remove',
                                                                style: GoogleFonts.lato(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ))
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        icon: const Icon(
                                          Icons.delete_outline_outlined,
                                          size: 26,
                                          color: kblack,
                                        ),
                                      )
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
                                      'Color',
                                      style: GoogleFonts.lato(
                                          fontWeight: FontWeight.bold),
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
                                      Row(
                                        children: [
                                          Container(
                                            height: 35,
                                            width: 35,
                                            decoration: const BoxDecoration(
                                                color: klightGrey,
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(25),
                                                    bottomLeft:
                                                        Radius.circular(25))),
                                            child: Center(
                                              child: Text(
                                                '-',
                                                style: GoogleFonts.lato(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: kblack),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 35,
                                            width: 35,
                                            color: klightGrey,
                                            child: Center(
                                              child: Text(
                                                '1',
                                                style: GoogleFonts.lato(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: kblack),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 35,
                                            width: 35,
                                            decoration: const BoxDecoration(
                                                color: klightGrey,
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(25),
                                                    bottomRight:
                                                        Radius.circular(25))),
                                            child: Center(
                                              child: Text(
                                                '+',
                                                style: GoogleFonts.lato(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: kblack),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
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
            itemCount: 10,
          ),
        ));
  }
}
