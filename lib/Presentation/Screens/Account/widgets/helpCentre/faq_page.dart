import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';

import 'widget/visibility_listtile.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? kdarkbackground
            : klightGrey,
        body: DefaultTabController(
          length: 10,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: ButtonsTabBar(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Theme.of(context).brightness == Brightness.dark
                          ? kwhite
                          : kblack,
                    ),
                    unselectedDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Theme.of(context).brightness == Brightness.dark
                          ? kdarkcolor3
                          : klightGrey,
                    ),
                    borderColor: kblack,
                    borderWidth: 2,
                    unselectedLabelStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? kwhite
                          : kblack,
                    ),
                    labelStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? kblack
                          : kwhite,
                    ),
                    radius: 25,
                    height: 40,
                    buttonMargin: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                    tabs: [
                      Tab(
                        text: 'helpcentrepage.genaral'.tr(),
                      ),
                      Tab(
                        text: 'helpcentrepage.orders'.tr(),
                      ),
                      Tab(
                        text: 'helpcentrepage.payment'.tr(),
                      ),
                      Tab(
                        text: 'helpcentrepage.shippinganddelivery'.tr(),
                      ),
                      Tab(
                        text: 'helpcentrepage.returnandrefund'.tr(),
                      ),
                      Tab(
                        text: 'helpcentrepage.accountandProfile'.tr(),
                      ),
                      Tab(
                        text: 'helpcentrepage.productinfo'.tr(),
                      ),
                      Tab(
                        text: 'helpcentrepage.promotion'.tr(),
                      ),
                      Tab(
                        text: 'helpcentrepage.customersupport'.tr(),
                      ),
                      Tab(
                        text: 'helpcentrepage.privacyandSecurity'.tr(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: SearchBar(
                    hintText: 'searchhint'.tr(),
                    hintStyle: WidgetStatePropertyAll(
                        GoogleFonts.poppins(color: kGrey.withOpacity(0.6))),
                    autoFocus: false,
                    elevation: const WidgetStatePropertyAll(0),
                    backgroundColor:
                        Theme.of(context).brightness == Brightness.dark
                            ? const WidgetStatePropertyAll(kdarkcolor1)
                            : const WidgetStatePropertyAll(kwhite),
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
                  height: 600,
                  child: TabBarView(children: [
                    Column(
                      children: [
                        VisblityListTile(
                          title: 'faqquestions.q1'.tr(),
                          answer: 'faqquestions.a1'.tr(),
                        ),
                        VisblityListTile(
                          title: 'faqquestions.q2'.tr(),
                          answer: 'faqquestions.a2'.tr(),
                        ),
                        VisblityListTile(
                          title: 'faqquestions.q3'.tr(),
                          answer: 'faqquestions.a3'.tr(),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        VisblityListTile(
                          title: 'faqquestions.q4'.tr(),
                          answer: 'faqquestions.a4'.tr(),
                        ),
                        VisblityListTile(
                            title: 'faqquestions.q5'.tr(),
                            answer: 'faqquestions.a5'.tr()),
                        VisblityListTile(
                            title: 'faqquestions.q6'.tr(),
                            answer: 'faqquestions.a6'.tr()),
                      ],
                    ),
                    Column(
                      children: [
                        VisblityListTile(
                            title: 'faqquestions.q7'.tr(),
                            answer: 'faqquestions.a7'.tr()),
                        VisblityListTile(
                            title: 'faqquestions.q8'.tr(),
                            answer: 'faqquestions.a8'.tr()),
                        VisblityListTile(
                            title: 'faqquestions.q9'.tr(),
                            answer: 'faqquestions.a9'.tr()),
                      ],
                    ),
                    Column(
                      children: [
                        VisblityListTile(
                            title: 'faqquestions.q10'.tr(),
                            answer: 'faqquestions.a10'.tr()),
                        VisblityListTile(
                            title: 'faqquestions.q11'.tr(),
                            answer: 'faqquestions.a11'.tr()),
                        VisblityListTile(
                            title: 'faqquestions.q12'.tr(),
                            answer: 'faqquestions.a12'.tr()),
                      ],
                    ),
                    Column(
                      children: [
                        VisblityListTile(
                            title: 'faqquestions.q13'.tr(),
                            answer: 'faqquestions.a13'.tr()),
                        VisblityListTile(
                            title: 'faqquestions.q14'.tr(),
                            answer: 'faqquestions.a14'.tr()),
                        VisblityListTile(
                            title: 'faqquestions.q15'.tr(),
                            answer: 'faqquestions.a15'.tr()),
                      ],
                    ),
                    Column(
                      children: [
                        VisblityListTile(
                            title: 'faqquestions.q16'.tr(),
                            answer: 'faqquestions.a16'.tr()),
                        VisblityListTile(
                            title: 'faqquestions.q17'.tr(),
                            answer: 'faqquestions.a17'.tr()),
                      ],
                    ),
                    Column(
                      children: [
                        VisblityListTile(
                            title: 'faqquestions.q18'.tr(),
                            answer: 'faqquestions.a18'.tr()),
                        VisblityListTile(
                            title: 'faqquestions.q19'.tr(),
                            answer: 'faqquestions.a19'.tr()),
                        VisblityListTile(
                            title: 'faqquestions.q20'.tr(),
                            answer: 'faqquestions.a20'.tr()),
                      ],
                    ),
                    Column(
                      children: [
                        VisblityListTile(
                            title: 'faqquestions.q21'.tr(),
                            answer: 'faqquestions.a21'.tr()),
                      ],
                    ),
                    Column(
                      children: [
                        VisblityListTile(
                            title: 'faqquestions.q22'.tr(),
                            answer: 'faqquestions.a22'.tr()),
                        VisblityListTile(
                            title: 'faqquestions.q23'.tr(),
                            answer: 'faqquestions.a23'.tr()),
                      ],
                    ),
                    Column(
                      children: [
                        VisblityListTile(
                            title: 'faqquestions.q24'.tr(),
                            answer: 'faqquestions.a24'.tr()),
                        VisblityListTile(
                            title: 'faqquestions.q25'.tr(),
                            answer: 'faqquestions.a25'.tr()),
                      ],
                    ),
                  ]),
                )
              ],
            ),
          ),
        ));
  }
}
