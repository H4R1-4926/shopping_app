import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:shopping_app/Core/colors.dart';
import 'package:shopping_app/Core/size.dart';
import 'package:shopping_app/Presentation/Screens/Home/Items_Category/items.dart';
import 'package:shopping_app/Presentation/Screens/Home/Widgets/category_veiw_more_page.dart';

import 'icon_text_widget.dart';

class CatogorySection extends StatelessWidget {
  const CatogorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: double.infinity,
      color: Theme.of(context).brightness == Brightness.dark
          ? kdarkbackground
          : kwhite,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconWithTextWidget(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ItemList(),
                      ));
                },
                icon: Icons.style,
                text: 'Product',
              ),
              IconWithTextWidget(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ItemList(),
                      ));
                },
                icon: Icons.style,
                text: 'Product',
              ),
              IconWithTextWidget(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ItemList(),
                      ));
                },
                icon: Icons.style,
                text: 'Product',
              ),
              IconWithTextWidget(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ItemList(),
                      ));
                },
                icon: Icons.style,
                text: 'Product',
              ),
            ],
          ),
          kSizedBoxHeight20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconWithTextWidget(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ItemList(),
                      ));
                },
                icon: Icons.style,
                text: 'Product',
              ),
              IconWithTextWidget(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ItemList(),
                      ));
                },
                icon: Icons.style,
                text: 'Product',
              ),
              IconWithTextWidget(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ItemList(),
                      ));
                },
                icon: Icons.style,
                text: 'Product',
              ),
              IconWithTextWidget(
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ViewMorePage(),
                      ));
                },
                icon: Icons.add,
                text: 'homepage.viewmore'.tr(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
