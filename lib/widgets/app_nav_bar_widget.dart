import 'package:flutter/material.dart';
import 'package:shared_code/shared_code.dart';
import 'package:ui_task/extensions/string_extensions.dart';
import 'package:ui_task/pages/home_page.dart';

class AppNavBarWidget extends StatelessWidget {
  const AppNavBarWidget({
    super.key,
  });

  String appNavBarIconName(AppNavBarItem item) {
    if (item == AppNavBarItem.assets) {
      return 'assets';
    } else if (item == AppNavBarItem.home) {
      return 'home';
    } else if (item == AppNavBarItem.profile) {
      return 'profile';
    } else if (item == AppNavBarItem.support) {
      return 'support';
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            color: Colors.grey.withOpacity(.2),
            blurRadius: 10,
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(
            mediumBorderRadius,
          ),
          topRight: Radius.circular(
            mediumBorderRadius,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ...AppNavBarItem.values.map(
            (e) => IconButton(
              onPressed: () {},
              icon: Column(
                children: [
                  Image.asset(
                    'assets/nav/${appNavBarIconName(e)}.png',
                    width: smallIconSize,
                  ),
                  Text(
                    e.name.capitalize,
                    style: h4TextStyleInactive.copyWith(
                      color: e == AppNavBarItem.home
                          ? Theme.of(context).primaryColor
                          : null,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
