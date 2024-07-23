import 'package:easy_localization/easy_localization.dart';
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
      children: [
        TimeLineTileWidget(
          isPast: true,
          orderDateOrExpected: '01/01/2024',
          orderTime: '11:11 PM',
          isFirst: true,
          isLast: false,
          title: 'orderpage.orderrecieved'.tr(),
        ),
        TimeLineTileWidget(
          isPast: true,
          orderDateOrExpected: '01/01/2024',
          orderTime: '11:11 PM',
          isFirst: false,
          isLast: false,
          title: 'orderpage.orderpacked'.tr(),
        ),
        TimeLineTileWidget(
          isPast: false,
          orderDateOrExpected: 'orderpage.expected'.tr(args: ['01/01/2024']),
          isFirst: false,
          isLast: true,
          orderTime: '11:11 PM',
          title: 'orderpage.ordershipped'.tr(),
        ),
      ],
    );
  }
}
