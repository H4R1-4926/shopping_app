import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
import 'vertical_time_line_widget.dart';

class VerticalTimeline extends StatelessWidget {
  const VerticalTimeline({super.key});

  @override
  Widget build(BuildContext context) {
    return Timeline(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        TimeLineTileWidget(
          isPast: true,
          orderDateOrExpected: '01/01/2024',
          orderTime: '11:11 PM',
          isFirst: true,
          isLast: false,
        ),
        TimeLineTileWidget(
          isPast: true,
          orderDateOrExpected: '01/01/2024',
          orderTime: '11:11 PM',
          isFirst: false,
          isLast: false,
        ),
        TimeLineTileWidget(
          isPast: false,
          orderDateOrExpected: 'Expected on 01/01/2024',
          isFirst: false,
          isLast: false,
          orderTime: '11:11 PM',
        ),
        TimeLineTileWidget(
          isPast: false,
          orderDateOrExpected: 'Expected on 01/01/2024',
          isFirst: false,
          isLast: true,
          orderTime: '11:11 PM',
        ),
      ],
    );
  }
}
