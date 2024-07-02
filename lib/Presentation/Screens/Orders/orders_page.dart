import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Presentation/Screens/Orders/TabViews/completed.dart';
import 'package:shopping_app/Presentation/Screens/Orders/TabViews/ongoing.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            surfaceTintColor: kwhite,
            backgroundColor: kwhite,
            automaticallyImplyLeading: false,
            title: Text(
              'My Orders',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold, fontSize: 20),
            ),
            leading: const Padding(
              padding: EdgeInsets.only(left: 5),
              child: CircleAvatar(
                backgroundColor: kblack,
                radius: 2,
              ),
            ),
            bottom: TabBar(
              tabs: const [
                Tab(
                  text: 'On Going',
                ),
                Tab(
                  text: 'Completed',
                )
              ],
              indicatorColor: kblack,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 10),
              indicatorWeight: 3,
              labelStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 14, color: kblack),
              unselectedLabelStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 12, color: kGrey),
            ),
          ),
          body: const TabBarView(children: [OrderOnGoing(), OrderCompleted()])),
    );
  }
}
