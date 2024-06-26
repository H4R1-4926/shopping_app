// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Presentation/Screens/Home/Notification/notification_page.dart';
import 'package:shopping_app/Presentation/Screens/Home/Search/search_page.dart';

import 'package:shopping_app/Presentation/Screens/Home/Widgets/grid_explore_widget.dart';
import 'package:shopping_app/Presentation/Screens/Home/Wishlist/wishlist_page.dart';

import 'Widgets/carousal_widget.dart';

import 'Widgets/second_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.elliptical(50, 45),
                  bottomLeft: Radius.elliptical(50, 45))),
          surfaceTintColor: kwhite,
          leading: const Padding(
            padding: EdgeInsets.only(left: 5),
            child: CircleAvatar(
              backgroundColor: kblack,
              radius: 2,
            ),
          ),
          pinned: true,
          title: Text(
            'Hello User',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold, fontSize: 18),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const NotificationPage(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
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
                icon: const Icon(Icons.notifications_outlined)),
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const WishListPage(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
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
                icon: const Icon(Icons.favorite_outline)),
          ],
          bottom: PreferredSize(
              preferredSize: const Size(double.infinity, 85),
              child: GestureDetector(
                onTap: () {
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
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Container(
                      width: 350,
                      height: 47,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 241, 241, 241),
                          borderRadius: BorderRadius.circular(25)),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.search_outlined,
                              color: Color.fromARGB(255, 195, 195, 195),
                            ),
                          )
                        ],
                      ),
                    )),
              )),
        ),
        const SliverList(
            delegate: SliverChildListDelegate.fixed([
          TopContainerWidget(),
          CatogorySection(),
          GridCategaryWidget(),
        ]))
      ],
    ));
  }
}
