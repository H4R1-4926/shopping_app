import 'package:flutter/material.dart';

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
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? kblack
            : klightGrey,
        appBar: AppBar(
          title: Text(
            'My Cart',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold, fontSize: 20),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Total price',
                                style: GoogleFonts.lato(
                                    fontSize: 13, color: kGrey)),
                            Text(
                              '₹ 999\\-',
                              style: GoogleFonts.openSans(
                                  fontSize: 30, fontWeight: FontWeight.bold),
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
                        style: ButtonStyle(
                            backgroundColor:
                                Theme.of(context).brightness == Brightness.dark
                                    ? const WidgetStatePropertyAll(
                                        Color.fromARGB(255, 53, 53, 53))
                                    : const WidgetStatePropertyAll(kblack),
                            fixedSize:
                                const WidgetStatePropertyAll(Size(200, 55))),
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
          leading: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: CircleAvatar(
              backgroundColor: Theme.of(context).brightness == Brightness.dark
                  ? kwhite
                  : kblack,
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
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? const Color.fromARGB(115, 69, 69, 69)
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
                          width: 10,
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
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
                                        style: GoogleFonts.lato(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 15),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Flexible(
                                      child: IconButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                            showDragHandle: true,
                                            context: context,
                                            builder: (context) {
                                              return Container(
                                                height: 380,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                                .brightness ==
                                                            Brightness.dark
                                                        ? kblack
                                                        : klightGrey,
                                                    boxShadow: [
                                                      BoxShadow(
                                                          color: Theme.of(context)
                                                                      .brightness ==
                                                                  Brightness
                                                                      .dark
                                                              ? kblack
                                                              : klightGrey,
                                                          blurRadius: 10,
                                                          spreadRadius: 10)
                                                    ]),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      'Remove from Cart?',
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                    ),
                                                    kSizedBoxHeight10,
                                                    const Divider(
                                                      indent: 23,
                                                      endIndent: 23,
                                                    ),
                                                    kSizedBoxHeight10,
                                                    Container(
                                                      height: 210,
                                                      width: double.infinity,
                                                      color: Theme.of(context)
                                                                  .brightness ==
                                                              Brightness.dark
                                                          ? kblack
                                                          : klightGrey,
                                                      child: Center(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                      10,
                                                                  vertical: 20),
                                                          child: Container(
                                                            height: 150,
                                                            decoration: BoxDecoration(
                                                                color: Theme.of(context)
                                                                            .brightness ==
                                                                        Brightness
                                                                            .dark
                                                                    ? const Color
                                                                        .fromARGB(
                                                                        255,
                                                                        51,
                                                                        51,
                                                                        51)
                                                                    : kwhite,
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
                                                                    height: 108,
                                                                    width: 108,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                20),
                                                                        image: const DecorationImage(
                                                                            fit:
                                                                                BoxFit.cover,
                                                                            image: NetworkImage(kDummyImg))),
                                                                  ),
                                                                  const SizedBox(
                                                                    width: 10,
                                                                  ),
                                                                  Flexible(
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                          .symmetric(
                                                                          vertical:
                                                                              10),
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          SizedBox(
                                                                            height:
                                                                                50,
                                                                            width:
                                                                                200,
                                                                            child:
                                                                                Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                SizedBox(
                                                                                  height: 30,
                                                                                  width: 150,
                                                                                  child: Text(
                                                                                    'Name of Product',
                                                                                    overflow: TextOverflow.ellipsis,
                                                                                    style: GoogleFonts.lato(fontWeight: FontWeight.w900, fontSize: 17),
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
                                                                                style: GoogleFonts.lato(fontWeight: FontWeight.bold, color: kGrey.withOpacity(0.9)),
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
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Text(
                                                                                  '₹ 99999\\-',
                                                                                  style: GoogleFonts.openSans(fontWeight: FontWeight.bold, fontSize: 18),
                                                                                ),
                                                                                const SizedBox(
                                                                                  width: 15,
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
                                                      ),
                                                    ),
                                                    const Divider(
                                                      indent: 23,
                                                      endIndent: 23,
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
                                                                    WidgetStatePropertyAll(
                                                                        kwhite),
                                                                fixedSize:
                                                                    WidgetStatePropertyAll(
                                                                        Size(
                                                                            150,
                                                                            50)),
                                                                backgroundColor:
                                                                    WidgetStatePropertyAll(
                                                                        kwhite),
                                                              ),
                                                              child: Text(
                                                                'Cancel',
                                                                style: GoogleFonts
                                                                    .lato(
                                                                        fontSize:
                                                                            14,
                                                                        color:
                                                                            kblack),
                                                              )),
                                                          ElevatedButton(
                                                              onPressed: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                              style: ButtonStyle(
                                                                  fixedSize:
                                                                      const WidgetStatePropertyAll(Size(
                                                                          150,
                                                                          50)),
                                                                  backgroundColor: Theme.of(context)
                                                                              .brightness ==
                                                                          Brightness
                                                                              .dark
                                                                      ? const WidgetStatePropertyAll(Color.fromARGB(
                                                                          255,
                                                                          69,
                                                                          69,
                                                                          69))
                                                                      : const WidgetStatePropertyAll(
                                                                          kblack),
                                                                  foregroundColor:
                                                                      const WidgetStatePropertyAll(
                                                                          kwhite)),
                                                              child: Text(
                                                                'Yes, Remove',
                                                                style: GoogleFonts.lato(
                                                                    fontSize:
                                                                        14,
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
                                          size: 23,
                                        ),
                                      ),
                                    )
                                  ],
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
                                SizedBox(
                                  height: 50,
                                  width: 150,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '₹ 99999\\-',
                                        style: GoogleFonts.openSans(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
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
            itemCount: 10,
          ),
        ));
  }
}
