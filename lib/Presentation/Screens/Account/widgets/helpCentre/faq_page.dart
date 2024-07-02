import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';

import 'widget/visibility_listtile.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: klightGrey,
        body: DefaultTabController(
          length: 10,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: ButtonsTabBar(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25), color: kblack),
                    unselectedDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: klightGrey),
                    borderColor: kblack,
                    borderWidth: 2,
                    unselectedLabelStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, color: kblack),
                    labelStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: kwhite),
                    radius: 25,
                    height: 40,
                    buttonMargin: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                    tabs: const [
                      Tab(
                        text: 'Genaral',
                      ),
                      Tab(
                        text: 'Orders',
                      ),
                      Tab(
                        text: 'Payments',
                      ),
                      Tab(
                        text: 'Shipping and Delivery',
                      ),
                      Tab(
                        text: 'Return and Refunds',
                      ),
                      Tab(
                        text: 'Account and Profile',
                      ),
                      Tab(
                        text: 'Product Information',
                      ),
                      Tab(
                        text: 'Promotion and Discounts',
                      ),
                      Tab(
                        text: 'Customer Support',
                      ),
                      Tab(
                        text: 'Privacy and Security',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: SearchBar(
                    hintText: 'Search',
                    hintStyle: WidgetStatePropertyAll(
                        GoogleFonts.poppins(color: kGrey.withOpacity(0.6))),
                    autoFocus: false,
                    elevation: const WidgetStatePropertyAll(0),
                    backgroundColor: const WidgetStatePropertyAll(kwhite),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                    leading: const Icon(
                      Icons.search_outlined,
                      color: Color.fromARGB(255, 195, 195, 195),
                    ),
                    onSubmitted: (value) {},
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: const TabBarView(children: [
                    Column(
                      children: [
                        VisblityListTile(
                          title: 'Question 1',
                          answer: '',
                        ),
                        VisblityListTile(
                          title: 'Question 1',
                          answer: '',
                        ),
                        VisblityListTile(
                          title: 'Question 2',
                          answer: '',
                        ),
                      ],
                    ),
                    VisblityListTile(
                      title: 'Question 1',
                      answer: '',
                    ),
                    Center(
                      child: Text('Pages'),
                    ),
                    Center(
                      child: Text('Pages'),
                    ),
                    Center(
                      child: Text('Pages'),
                    ),
                    Center(
                      child: Text('Pages'),
                    ),
                    Center(
                      child: Text('Pages'),
                    ),
                    Center(
                      child: Text('Pages'),
                    ),
                    Center(
                      child: Text('Pages'),
                    ),
                    Center(
                      child: Text('Pages'),
                    ),
                  ]),
                )
              ],
            ),
          ),
        ));
  }
}
