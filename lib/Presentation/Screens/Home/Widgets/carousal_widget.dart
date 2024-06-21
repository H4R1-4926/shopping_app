import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TopContainerWidget extends StatefulWidget {
  const TopContainerWidget({
    super.key,
  });

  @override
  State<TopContainerWidget> createState() => _TopContainerWidgetState();
}

class _TopContainerWidgetState extends State<TopContainerWidget> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Most Popular',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 220,
            child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.topCenter,
              children: [
                Padding(
                    padding: const EdgeInsetsDirectional.only(
                      top: 10,
                    ),
                    child: CarouselSlider.builder(
                      itemCount: 5,
                      itemBuilder: (context, index, realIndex) {
                        return Container(
                          height: 230,
                          width: 360,
                          decoration: BoxDecoration(
                              color: kwhite,
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/demo.webp'))),
                        );
                      },
                      options: CarouselOptions(
                        autoPlay: true,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        },
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 195),
                  child: Center(
                      child: AnimatedSmoothIndicator(
                          effect: const ExpandingDotsEffect(
                              dotHeight: 6,
                              dotWidth: 8,
                              dotColor: Color.fromARGB(255, 186, 186, 186),
                              activeDotColor: Color.fromARGB(255, 70, 70, 70),
                              spacing: 8),
                          activeIndex: _current,
                          count: 5)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
