import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';

class SearchResultPage extends StatelessWidget {
  final String searchBarText;
  final String searchResultLength;
  const SearchResultPage(
      {super.key,
      required this.searchBarText,
      required this.searchResultLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Results For \'$searchBarText\'',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text('$searchResultLength founds',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, fontSize: 15))
            ],
          ),
        ),
        Expanded(
            child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: GridView.builder(
            itemCount: 15,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.68,
            ),
            itemBuilder: (context, index) {
              return Padding(
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
                                        image: NetworkImage(
                                            'https://pulimoottilonline.com/cdn/shop/products/IMG_1446_600x.jpg?v=1679904691')),
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
                        padding: const EdgeInsets.only(left: 120, top: 15),
                        child: CircleAvatar(
                          backgroundColor: kblack,
                          maxRadius: 17,
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.favorite_outline),
                              iconSize: 19,
                              color: kwhite,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ))
      ],
    );
  }
}
