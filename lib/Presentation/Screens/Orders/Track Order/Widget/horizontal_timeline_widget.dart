import 'package:flutter/material.dart';
import 'package:shopping_app/Core/colors.dart';

import 'package:timeline_tile/timeline_tile.dart';

class HorizontalTmeLineWidget extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final Widget startChild;
  const HorizontalTmeLineWidget(
      {super.key,
      required this.isFirst,
      required this.isLast,
      required this.isPast,
      required this.startChild});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      child: TimelineTile(
        axis: TimelineAxis.horizontal,
        isFirst: isFirst,
        isLast: isLast,
        alignment: TimelineAlign.center,
        startChild: startChild,
        indicatorStyle: IndicatorStyle(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            color: isPast ? kblack : kGrey.withOpacity(0.4),
            width: 30,
            height: 25,
            drawGap: true,
            iconStyle: IconStyle(
                iconData: isPast ? Icons.check : Icons.schedule,
                color: isPast ? kwhite : kwhite.withOpacity(0.4),
                fontSize: 18)),
        beforeLineStyle:
            LineStyle(color: isPast ? kblack : kGrey.withOpacity(0.4)),
      ),
    );
  }
}
