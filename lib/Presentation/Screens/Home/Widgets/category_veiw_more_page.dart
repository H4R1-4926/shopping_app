import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/img.dart';

import '../Search/search_page.dart';

class ViewMorePage extends StatelessWidget {
  const ViewMorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: kwhite,
        title: Text(
          'Category',
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              childAspectRatio: 1,
              mainAxisSpacing: 20),
          children: [
            GridTile(
                footer: Container(
                  height: 50,
                  color: kwhite.withOpacity(0.5),
                  child: Center(
                      child: Text(
                    'Item Name',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  )),
                ),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: const DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(kDummyImg))),
                )),
            GridTile(
                footer: Container(
                  height: 50,
                  color: kwhite.withOpacity(0.5),
                  child: Center(
                      child: Text(
                    'Item Name',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  )),
                ),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: const DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(kDummyImg))),
                )),
            GridTile(
                footer: Container(
                  height: 50,
                  color: kwhite.withOpacity(0.5),
                  child: Center(
                      child: Text(
                    'Item Name',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  )),
                ),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: const DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(kDummyImg))),
                )),
            GridTile(
                footer: Container(
                  height: 50,
                  color: kwhite.withOpacity(0.5),
                  child: Center(
                      child: Text(
                    'Item Name',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  )),
                ),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: const DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(kDummyImg))),
                )),
            GridTile(
                footer: Container(
                  height: 50,
                  color: kwhite.withOpacity(0.5),
                  child: Center(
                      child: Text(
                    'Item Name',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  )),
                ),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: const DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(kDummyImg))),
                )),
            GridTile(
                footer: Container(
                  height: 50,
                  color: kwhite.withOpacity(0.5),
                  child: Center(
                      child: Text(
                    'Item Name',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  )),
                ),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: const DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(kDummyImg))),
                )),
            GridTile(
                footer: Container(
                  height: 50,
                  color: kwhite.withOpacity(0.5),
                  child: Center(
                      child: Text(
                    'Item Name',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  )),
                ),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: const DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(kDummyImg))),
                )),
            GridTile(
                footer: Container(
                  height: 50,
                  color: kwhite.withOpacity(0.5),
                  child: Center(
                      child: Text(
                    'Item Name',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  )),
                ),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: const DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(kDummyImg))),
                )),
            GridTile(
                footer: Container(
                  height: 50,
                  color: kwhite.withOpacity(0.5),
                  child: Center(
                      child: Text(
                    'Item Name',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  )),
                ),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: const DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(kDummyImg))),
                )),
            GridTile(
                footer: Container(
                  height: 50,
                  color: kwhite.withOpacity(0.5),
                  child: Center(
                      child: Text(
                    'Item Name',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  )),
                ),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: const DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(kDummyImg))),
                )),
          ],
        ),
      ),
    );
  }
}
