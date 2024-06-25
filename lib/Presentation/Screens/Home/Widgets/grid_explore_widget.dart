import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Presentation/Screens/Home/SelectedItem/selected_item.dart';

class GridCategaryWidget extends StatelessWidget {
  const GridCategaryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 10),
          child: Text(
            'Explore',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        DefaultTabController(
            length: 7,
            child: Column(
              children: [
                ButtonsTabBar(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25), color: kblack),
                    unselectedDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25), color: kwhite),
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
                        text: 'All',
                      ),
                      Tab(
                        text: 'Saree\'s',
                      ),
                      Tab(
                        text: 'Dhoti\'s',
                      ),
                      Tab(
                        text: 'Bedsheet\'s',
                      ),
                      Tab(
                        text: 'Towel\'s',
                      ),
                      Tab(
                        text: 'Top Piece\'s',
                      ),
                      Tab(
                        text: 'Shirt Piece\'s',
                      ),
                    ]),
                SizedBox(
                  height: 2800,
                  child: TabBarView(children: [
                    Scrollbar(
                      child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.68,
                          ),
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      const SelectedItemPage(),
                                  transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) {
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
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Center(
                                              child: Container(
                                                height: 180,
                                                width: 180,
                                                decoration: BoxDecoration(
                                                    image: const DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: NetworkImage(
                                                            'https://pulimoottilonline.com/cdn/shop/products/IMG_1446_600x.jpg?v=1679904691')),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
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
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 120, top: 15),
                                        child: CircleAvatar(
                                          backgroundColor: kblack,
                                          maxRadius: 18,
                                          child: Center(
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons
                                                  .favorite_border_outlined),
                                              iconSize: 20,
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
                          }),
                    ),
                    Scrollbar(
                      child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.68,
                          ),
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      const SelectedItemPage(),
                                  transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) {
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
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Center(
                                              child: Container(
                                                height: 180,
                                                width: 180,
                                                decoration: BoxDecoration(
                                                    image: const DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: NetworkImage(
                                                            'https://pulimoottilonline.com/cdn/shop/products/IMG_1446_600x.jpg?v=1679904691')),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
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
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 120, top: 15),
                                        child: CircleAvatar(
                                          backgroundColor: kblack,
                                          maxRadius: 18,
                                          child: Center(
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons
                                                  .favorite_border_outlined),
                                              iconSize: 20,
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
                          }),
                    ),
                    Scrollbar(
                      child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.68,
                          ),
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      const SelectedItemPage(),
                                  transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) {
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
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Center(
                                              child: Container(
                                                height: 180,
                                                width: 180,
                                                decoration: BoxDecoration(
                                                    image: const DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: NetworkImage(
                                                            'https://pulimoottilonline.com/cdn/shop/products/IMG_1446_600x.jpg?v=1679904691')),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
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
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 120, top: 15),
                                        child: CircleAvatar(
                                          backgroundColor: kblack,
                                          maxRadius: 18,
                                          child: Center(
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons
                                                  .favorite_border_outlined),
                                              iconSize: 20,
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
                          }),
                    ),
                    Scrollbar(
                      child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.68,
                          ),
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      const SelectedItemPage(),
                                  transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) {
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
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Center(
                                              child: Container(
                                                height: 180,
                                                width: 180,
                                                decoration: BoxDecoration(
                                                    image: const DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: NetworkImage(
                                                            'https://pulimoottilonline.com/cdn/shop/products/IMG_1446_600x.jpg?v=1679904691')),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
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
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 120, top: 15),
                                        child: CircleAvatar(
                                          backgroundColor: kblack,
                                          maxRadius: 18,
                                          child: Center(
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons
                                                  .favorite_border_outlined),
                                              iconSize: 20,
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
                          }),
                    ),
                    Scrollbar(
                      child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.68,
                          ),
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      const SelectedItemPage(),
                                  transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) {
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
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Center(
                                              child: Container(
                                                height: 180,
                                                width: 180,
                                                decoration: BoxDecoration(
                                                    image: const DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: NetworkImage(
                                                            'https://pulimoottilonline.com/cdn/shop/products/IMG_1446_600x.jpg?v=1679904691')),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
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
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 120, top: 15),
                                        child: CircleAvatar(
                                          backgroundColor: kblack,
                                          maxRadius: 18,
                                          child: Center(
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons
                                                  .favorite_border_outlined),
                                              iconSize: 20,
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
                          }),
                    ),
                    Scrollbar(
                      child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.68,
                          ),
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      const SelectedItemPage(),
                                  transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) {
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
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Center(
                                              child: Container(
                                                height: 180,
                                                width: 180,
                                                decoration: BoxDecoration(
                                                    image: const DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: NetworkImage(
                                                            'https://pulimoottilonline.com/cdn/shop/products/IMG_1446_600x.jpg?v=1679904691')),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
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
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 120, top: 15),
                                        child: CircleAvatar(
                                          backgroundColor: kblack,
                                          maxRadius: 18,
                                          child: Center(
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons
                                                  .favorite_border_outlined),
                                              iconSize: 20,
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
                          }),
                    ),
                    Scrollbar(
                      child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.68,
                          ),
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      const SelectedItemPage(),
                                  transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) {
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
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Center(
                                              child: Container(
                                                height: 180,
                                                width: 180,
                                                decoration: BoxDecoration(
                                                    image: const DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: NetworkImage(
                                                            'https://pulimoottilonline.com/cdn/shop/products/IMG_1446_600x.jpg?v=1679904691')),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
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
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 120, top: 15),
                                        child: CircleAvatar(
                                          backgroundColor: kblack,
                                          maxRadius: 18,
                                          child: Center(
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons
                                                  .favorite_border_outlined),
                                              iconSize: 20,
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
                          }),
                    ),
                  ]),
                )
              ],
            )),
      ],
    );
  }
}
