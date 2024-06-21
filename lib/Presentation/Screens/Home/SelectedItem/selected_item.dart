import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/img.dart';
import 'package:shopping_app/Core/size.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SelectedItemPage extends StatefulWidget {
  const SelectedItemPage({super.key});

  @override
  State<SelectedItemPage> createState() => _SelectedItemPageState();
}

class _SelectedItemPageState extends State<SelectedItemPage> {
  int _current = 0;
  final List colors = [
    Colors.black,
    const Color.fromARGB(255, 255, 125, 115),
    const Color.fromARGB(255, 146, 206, 255),
    const Color.fromARGB(255, 142, 255, 146),
    const Color.fromARGB(255, 237, 138, 255),
    const Color.fromARGB(255, 255, 135, 175),
    const Color.fromARGB(255, 142, 159, 255)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        forceMaterialTransparency: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 500,
              color: klightGrey,
              child: Stack(
                children: [
                  CarouselSlider.builder(
                      itemCount: 5,
                      itemBuilder: (context, index, realIndex) {
                        return Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/demo.webp'))),
                        );
                      },
                      options: CarouselOptions(
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          },
                          height: 500,
                          viewportFraction: 1,
                          enableInfiniteScroll: false)),
                  Padding(
                    padding: const EdgeInsets.only(top: 470),
                    child: Center(
                        child: AnimatedSmoothIndicator(
                      activeIndex: _current,
                      count: 5,
                      effect: const ExpandingDotsEffect(
                          dotHeight: 8,
                          dotWidth: 8,
                          dotColor: klightGrey,
                          activeDotColor: Color.fromARGB(255, 44, 44, 44),
                          spacing: 8),
                    )),
                  )
                ],
              ),
            ),
            kSizedBoxHeight10,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Name of the Product',
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w900, fontSize: 30),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_outline,
                        size: 35,
                      ))
                ],
              ),
            ),
            const Divider(
              indent: 23,
              endIndent: 23,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250, top: 10),
              child: Text(
                'Description',
                style:
                    GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.w900),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 10),
              child: Text(
                'Description of the product goes here,',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500, fontSize: 15),
              ),
            ),
            kSizedBoxHeight5,
            const Divider(
              indent: 23,
              endIndent: 23,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 280, top: 10),
              child: Text(
                'Colours',
                style:
                    GoogleFonts.lato(fontSize: 19, fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(
              height: 90,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return CircleAvatar(
                      backgroundColor: colors[index],
                      radius: 30,
                      child: CircleAvatar(
                        backgroundColor: kwhite.withOpacity(0.3),
                        radius: 30,
                        child: const Icon(
                          Icons.check,
                          color: kblack,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                  itemCount: 7,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            kSizedBoxHeight10,
            const Divider(
              indent: 23,
              endIndent: 23,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 280, top: 15),
              child: Text(
                'In Stock',
                style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.greenAccent),
              ),
            ),
            kSizedBoxHeight5,
            Padding(
              padding: const EdgeInsets.only(right: 220),
              child: Text(
                '₹ 999\\-',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold, fontSize: 40),
              ),
            ),
            kSizedBoxHeight5,
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  showDragHandle: true,
                  backgroundColor: kwhite,
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 380,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: kwhite,
                          boxShadow: [
                            BoxShadow(
                                color: kwhite,
                                blurRadius: 10,
                                spreadRadius: 10),
                          ],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15))),
                      child: Column(
                        children: [
                          kSizedBoxHeight10,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Name Of The Product',
                                  style: GoogleFonts.poppins(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  width: 70,
                                  height: 80,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(kDemoImg)),
                                      borderRadius: BorderRadius.circular(15)),
                                )
                              ],
                            ),
                          ),
                          kSizedBoxHeight10,
                          const Divider(
                            indent: 20,
                            endIndent: 20,
                          ),
                          kSizedBoxHeight20,
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Price',
                                    style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Text(
                                  '₹ 999\\-',
                                  style: GoogleFonts.roboto(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          kSizedBoxHeight20,
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Quantity',
                                    style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          width: 45,
                                          height: 45,
                                          decoration: const BoxDecoration(
                                              color: klightGrey,
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(25),
                                                  topLeft:
                                                      Radius.circular(25))),
                                          child: Center(
                                            child: Text(
                                              '-1',
                                              style: GoogleFonts.openSans(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 45,
                                          height: 45,
                                          decoration: const BoxDecoration(
                                              color: klightGrey,
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(25),
                                                  topLeft:
                                                      Radius.circular(25))),
                                          child: Center(
                                            child: Text(
                                              '-5',
                                              style: GoogleFonts.openSans(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 45,
                                      height: 90,
                                      color: klightGrey,
                                      child: Center(
                                        child: Text(
                                          '1',
                                          style: GoogleFonts.openSans(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          width: 45,
                                          height: 45,
                                          decoration: const BoxDecoration(
                                              color: klightGrey,
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(25),
                                                  topRight:
                                                      Radius.circular(25))),
                                          child: Center(
                                            child: Text(
                                              '+1',
                                              style: GoogleFonts.openSans(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 45,
                                          height: 45,
                                          decoration: const BoxDecoration(
                                              color: klightGrey,
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(25),
                                                  topRight:
                                                      Radius.circular(25))),
                                          child: Center(
                                            child: Text(
                                              '+5',
                                              style: GoogleFonts.openSans(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            indent: 23,
                            endIndent: 23,
                          ),
                          Expanded(
                            child: Container(
                              color: kwhite,
                              height: 70,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Total price',
                                            style: GoogleFonts.lato(
                                                fontSize: 13, color: kGrey),
                                          ),
                                          Text(
                                            '₹ 999\\-',
                                            style: GoogleFonts.openSans(
                                                fontSize: 35,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 19),
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: const ButtonStyle(
                                            fixedSize: MaterialStatePropertyAll(
                                                Size(210, 50)),
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    kblack)),
                                        child: Text(
                                          'Add to cart',
                                          style: GoogleFonts.lato(
                                              color: kwhite,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 255, 234, 0),
                  ),
                  fixedSize: MaterialStatePropertyAll(Size(300, 50))),
              child: Text(
                'Add to Cart',
                style: GoogleFonts.roboto(
                    fontSize: 18, fontWeight: FontWeight.w700, color: kblack),
              ),
            ),
            kSizedBoxHeight20
          ],
        ),
      ),
    );
  }
}
