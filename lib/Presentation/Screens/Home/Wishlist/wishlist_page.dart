import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/img.dart';

import '../SelectedItem/selected_item.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: klightGrey,
      appBar: AppBar(
        title: Text(
          'My Wishlist',
          style:
              GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        surfaceTintColor: klightGrey,
        backgroundColor: klightGrey,
      ),
      body: GridView.builder(
        itemCount: 15,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.66,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    const SelectedItemPage(),
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                child: Stack(
                  children: [
                    Column(
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
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 7),
                          child: Text(
                            'Name Of The Product',
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                                color: kblack,
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
                    Padding(
                      padding: const EdgeInsets.only(left: 119, top: 15),
                      child: CircleAvatar(
                        backgroundColor: kblack,
                        maxRadius: 17,
                        child: Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite),
                            iconSize: 19,
                            color: kwhite,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
