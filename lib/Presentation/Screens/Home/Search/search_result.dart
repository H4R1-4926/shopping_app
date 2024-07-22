import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/img.dart';
import 'package:shopping_app/Core/size.dart';

class SearchResultPage extends StatelessWidget {
  final String searchBarText;
  final String searchResultLength;
  const SearchResultPage(
      {super.key,
      required this.searchBarText,
      required this.searchResultLength});

  @override
  Widget build(BuildContext context) {
    log('search.result'.tr(args: [searchBarText]));
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'search.result'.tr(args: [searchBarText]),
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold, fontSize: 17),
              ),
              Text('search.found'.tr(args: [searchResultLength]),
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, fontSize: 14))
            ],
          ),
        ),
        kSizedBoxHeight10,
        Expanded(
            child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: GridView.builder(
            itemCount: 15,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 250,
              childAspectRatio: 0.68,
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        height: 170,
                        width: 170,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 7),
                      child: Text(
                        'Name Of The Product',
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ),
                    Text(
                      '₹ 350 \\-',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    )
                  ],
                ),
              );
            },
          ),
        ))
      ],
    );
  }
}
