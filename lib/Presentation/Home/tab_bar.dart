// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Presentation/Screens/Account/account.dart';
import 'package:shopping_app/Presentation/Screens/Cart/cart_page.dart';
import 'package:shopping_app/Presentation/Screens/Home/hompage.dart';
import 'package:shopping_app/Presentation/Screens/Orders/orders_page.dart';

final ValueNotifier _pagenotifier = ValueNotifier(0);

class TabBarPage extends StatelessWidget {
  const TabBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _pages = [
      const HomePage(),
      const CartPage(),
      const OrdersPage(),
      const AccountPage(),
    ];
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: _pagenotifier,
        builder: (context, value, _) {
          return _pages[value];
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 35, right: 5),
        child: ValueListenableBuilder(
          valueListenable: _pagenotifier,
          builder: (context, value, child) {
            return Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: kblack.withOpacity(0.5),
                        offset: const Offset(-3, 10),
                        spreadRadius: 0,
                        blurRadius: 42)
                  ],
                  borderRadius: BorderRadius.circular(
                    25,
                  ),
                  color: kwhite),
              child: BottomNavigationBar(
                selectedItemColor: kblack,
                unselectedItemColor: const Color.fromARGB(255, 162, 162, 162),
                backgroundColor: kwhite,
                selectedLabelStyle: GoogleFonts.lato(),
                elevation: 0,
                currentIndex: value,
                items: const [
                  BottomNavigationBarItem(
                    backgroundColor: Colors.transparent,
                    icon: Icon(Icons.home_outlined),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Colors.transparent,
                    icon: Icon(Icons.shopping_cart_outlined),
                    label: 'Cart',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Colors.transparent,
                    icon: Icon(Icons.shopping_bag_outlined),
                    label: 'Orders',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Colors.transparent,
                    icon: Icon(Icons.person_outline),
                    label: 'Account',
                  ),
                ],
                onTap: (value) {
                  _pagenotifier.value = value;
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
