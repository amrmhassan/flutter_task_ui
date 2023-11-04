// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ui_task/extensions/string_extensions.dart';
import 'package:ui_task/widgets/home_down_part.dart';
import 'package:ui_task/widgets/home_upper_part.dart';
import 'package:shared_code/shared_code.dart';

enum HomeNavBarItem {
  categories,
  services,
  orders,
}

enum AppNavBarItem {
  home,
  assets,
  support,
  profile,
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        elevation: 2,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Home'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                HomeUpperPart(),
                Expanded(
                  child: HomeDownPart(),
                ),
              ],
            ),
          ),
          AppNavBarWidget()
        ],
      ),
    );
  }
}

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

class AppNavBarWidget extends StatelessWidget {
  const AppNavBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            color: Colors.grey.withOpacity(.2),
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.only(
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
