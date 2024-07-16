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
                const SizedBox(
                  height: 600,
                  child: TabBarView(children: [
                    Column(
                      children: [
                        VisblityListTile(
                          title: 'What is [App Name]?',
                          answer:
                              '[App Name] is an online shopping platform offering a wide range of products from various categories.',
                        ),
                        VisblityListTile(
                          title: 'How do I use the app?',
                          answer:
                              'Browse through the categories or use the search bar to find products. Add items to your cart and proceed to checkout. You can also track your orders and manage your account settings.',
                        ),
                        VisblityListTile(
                          title: 'Is the app free to use?',
                          answer:
                              'Yes, the app is free to download and use. However, you will need to pay for the products you purchase.',
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        VisblityListTile(
                          title: 'How do I place an order?',
                          answer:
                              'Browse the products, add them to your cart, and proceed to checkout to place an order.',
                        ),
                        VisblityListTile(
                          title: 'Can I cancel or change my order?',
                          answer:
                              'Yes, you can cancel the order before shipping, Contact our customer support for assistance.',
                        ),
                        VisblityListTile(
                          title: 'How can I track my order?',
                          answer:
                              'You can track your order by logging into your account and navigating to the "Order History" section.',
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        VisblityListTile(
                          title: 'What payment methods are accepted?',
                          answer:
                              'For now we accept online payments, in the future you can pay using COD',
                        ),
                        VisblityListTile(
                          title: 'Is my payment information secure?',
                          answer:
                              'Yes, we use secure encryption technologies to protect your payment information.',
                        ),
                        VisblityListTile(
                          title: 'What should I do if my payment fails?',
                          answer:
                              'If your payment fails, please try again with a different payment method or contact our customer support.',
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        VisblityListTile(
                            title: 'What are the shipping charges?',
                            answer:
                                'Shipping charges vary based on the destination and the weight of the package. You can view the shipping charges at checkout.'),
                        VisblityListTile(
                            title: 'How long does delivery take?',
                            answer:
                                'Delivery times vary depending on your location and the shipping method chosen. Typically, it takes 3-7 business days.'),
                        VisblityListTile(
                            title: 'Do you offer international shipping?',
                            answer:
                                'No, We\'re not offering international shipping'),
                      ],
                    ),
                    Column(
                      children: [
                        VisblityListTile(
                            title: 'What is your return policy?',
                            answer:
                                'We accept returns within [number] days of delivery. Items must be unused and in original packaging. Please review our return policy [here/link].'),
                        VisblityListTile(
                            title: 'How do I return an item?',
                            answer:
                                'To return an item, log into your account, go to the "Order History" section, select the order, and initiate a return request.'),
                        VisblityListTile(
                            title: 'When will I receive my refund?',
                            answer:
                                'Refunds are processed within [number] days after we receive and inspect the returned item. The refund will be credited to your original payment method.'),
                      ],
                    ),
                    Column(
                      children: [
                        VisblityListTile(
                            title: 'How do I update my account information?',
                            answer:
                                'You can update your account information by logging into your account and navigating to the "Profile" section.'),
                        VisblityListTile(
                            title: 'How can I delete my account?',
                            answer:
                                'To delete your account, please contact our customer support team.'),
                      ],
                    ),
                    Column(
                      children: [
                        VisblityListTile(
                            title: 'How do I find a specific product?',
                            answer:
                                'Use the search bar at the top of the app to find specific products by name or category.'),
                        VisblityListTile(
                            title: 'Are the product images accurate?',
                            answer:
                                'While we strive to provide accurate images, there may be slight variations in color and design.'),
                        VisblityListTile(
                            title: 'Can I see customer reviews for a product?',
                            answer:
                                'Currently we don\'t have a customer review section,But it will be available in the feature.'),
                      ],
                    ),
                    Column(
                      children: [
                        VisblityListTile(
                            title: 'Do you offer promotion and discounts?',
                            answer:
                                'Unfortunately we\'re not doing that, But it will be available in the future.'),
                      ],
                    ),
                    Column(
                      children: [
                        VisblityListTile(
                            title: 'How can I contact customer support?',
                            answer:
                                'You can contact cutomer support via email, or social apps, please visit the customer support section.'),
                        VisblityListTile(
                            title: 'What are your customer support hours?',
                            answer:
                                'Our customer support is available from [hours] on [days].'),
                      ],
                    ),
                    Column(
                      children: [
                        VisblityListTile(
                            title:
                                'How do you protect my personal information?',
                            answer:
                                'We use advanced security measures, including SSL encryption, to protect your personal information.'),
                        VisblityListTile(
                            title:
                                'Do you share my information with third parties?',
                            answer:
                                'We do not share your personal information with third parties without your consent. Please review our privacy policy [here/link] for more details.'),
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
