import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/Core/colors.dart';
import 'package:timelines/timelines.dart';

class TimeLineTileWidget extends StatelessWidget {
  final bool isPast;
  final bool isFirst;
  final bool isLast;
  final String orderDateOrExpected;
  final String title;
  final String orderTime;
  const TimeLineTileWidget({
    super.key,
    required this.isPast,
    required this.orderDateOrExpected,
    required this.orderTime,
    required this.isFirst,
    required this.isLast,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final Color color =
        Theme.of(context).brightness == Brightness.dark ? kwhite : kblack;

    return TimelineTile(
        nodeAlign: TimelineNodeAlign.start,
        mainAxisExtent: 80,
        contents: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize:
                            context.locale.languageCode == 'en' ? 16 : 14),
                  ),
                  Text(
                    orderDateOrExpected,
                    style: GoogleFonts.openSans(
                        fontSize:
                            context.locale.languageCode == 'en' ? 14 : 12),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text(
                  orderTime,
                  style: GoogleFonts.openSans(fontSize: 14),
                ),
              )
            ],
          ),
        ),
        node: TimelineNode(
          endConnector: isLast
              ? const TransparentConnector()
              : Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: DashedLineConnector(
                    gap: 3,
                    thickness: 3,
                    color: isPast ? color : kGrey.withOpacity(0.4),
                  ),
                ),
          startConnector: isFirst
              ? const TransparentConnector()
              : Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: DashedLineConnector(
                    gap: 3,
                    thickness: 3,
                    color: isPast ? color : kGrey.withOpacity(0.4),
                  ),
                ),
          indicator: OutlinedDotIndicator(
              color: kblack,
              size: 25,
              child: DotIndicator(
                color: isPast ? color : kGrey.withOpacity(0.4),
                size: 10,
              )),
        ));
  }
}
