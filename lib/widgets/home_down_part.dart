import 'package:flutter/material.dart';
import 'package:shared_code/shared_code.dart';
import 'package:ui_task/constants/colors.dart';
import 'package:ui_task/pages/home_page.dart';
import 'package:ui_task/widgets/categories_widget.dart';
import 'package:ui_task/widgets/navbar_items_widget.dart';
import 'package:ui_task/widgets/no_orders.dart';
import 'package:ui_task/widgets/no_services.dart';

class HomeDownPart extends StatefulWidget {
  const HomeDownPart({super.key});

  @override
  State<HomeDownPart> createState() => _HomeDownPartState();
}

class _HomeDownPartState extends State<HomeDownPart> {
  HomeNavBarItem activeItem = HomeNavBarItem.categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: kHPad / 2,
        vertical: kVPad * .5,
      ),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: kHPad / 2,
              vertical: kVPad / 2,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.inactiveColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(mediumBorderRadius),
            ),
            child: NavBarItemsWidget(
              activeItem: activeItem,
              setActiveItem: (item) {
                setState(() {
                  activeItem = item;
                });
              },
            ),
          ),
          Expanded(
            child: activeItem == HomeNavBarItem.categories
                ? const CategoriesWidget()
                : activeItem == HomeNavBarItem.orders
                    ? const NoOrders()
                    : const NoServices(),
          ),
        ],
      ),
    );
  }
}
