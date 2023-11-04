// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shared_code/shared_code.dart';
import 'package:ui_task/constants/colors.dart';
import 'package:ui_task/constants/constants.dart';
import 'package:ui_task/extensions/string_extensions.dart';
import 'package:ui_task/pages/home_page.dart';

class NavBarItemsWidget extends StatelessWidget {
  final NavBarItem activeItem;
  final Function(NavBarItem item) setActiveItem;
  const NavBarItemsWidget({
    super.key,
    required this.activeItem,
    required this.setActiveItem,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...NavBarItem.values.map(
          (e) => Expanded(
            child: MainButton(
              padding: EdgeInsets.symmetric(vertical: kVPad / 3),
              margin: e == NavBarItem.orders
                  ? EdgeInsets.zero
                  : EdgeInsets.only(right: kHPad / 4),
              onTap: () {
                setActiveItem(e);
              },
              style: h4TextStyle.copyWith(
                color: e == activeItem ? Colors.white : Colors.black,
                fontWeight: e == activeItem ? FontWeight.normal : null,
              ),
              title: e == NavBarItem.orders
                  ? '${e.name.capitalize} (${Constants.orders})'
                  : e.name.capitalize,
              backgroundColor: e == NavBarItem.orders && e != activeItem
                  ? AppColors.inactiveColor.withOpacity(.5)
                  : e == activeItem
                      ? Theme.of(context).primaryColor
                      : AppColors.inactiveColor,
            ),
          ),
        )
      ],
    );
  }
}
