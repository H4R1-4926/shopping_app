import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/img.dart';

import '../Search/search_page.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Item Name',
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 22),
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
      ),
      body: GridView.builder(
        itemCount: 25,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 280,
          childAspectRatio: 0.668,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Center(
                      child: Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(kDummyImg)),
                            borderRadius: BorderRadius.circular(25)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8, top: 8),
                              child: CircleAvatar(
                                backgroundColor: kblack,
                                maxRadius: 18,
                                child: Center(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.favorite_border_outlined),
                                    iconSize: 20,
                                    color: kwhite,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                    child: Text(
                      'Name Of The Product',
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                          color: Theme.of(context).brightness == Brightness.dark
                              ? kwhite
                              : kblack,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                  Text(
                    '₹ 350 \\-',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
