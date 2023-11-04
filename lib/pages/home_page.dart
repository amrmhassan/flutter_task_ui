// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ui_task/constants/colors.dart';
import 'package:shared_code/shared_code.dart';
import 'package:ui_task/constants/constants.dart';
import 'package:ui_task/extensions/string_extensions.dart';
import 'package:ui_task/widgets/dot.dart';

enum NavBarItem {
  categories,
  services,
  orders,
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NavBarItem activeItem = NavBarItem.categories;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          HomeUpperPart(),
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: kHPad / 2,
              vertical: kVPad * .5,
            ),
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: kHPad / 4,
                    vertical: kVPad,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.inactiveColor,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(mediumBorderRadius),
                  ),
                  child: Row(
                    children: [
                      ...NavBarItem.values.map(
                        (e) => Expanded(
                          child: MainButton(
                            padding: EdgeInsets.symmetric(vertical: kVPad / 2),
                            margin: e == NavBarItem.orders
                                ? EdgeInsets.zero
                                : EdgeInsets.only(right: kHPad / 4),
                            onTap: () {
                              setState(() {
                                activeItem = e;
                              });
                            },
                            style: h4TextStyle.copyWith(
                              color:
                                  e == activeItem ? Colors.white : Colors.black,
                            ),
                            title: e == NavBarItem.orders
                                ? '${e.name.capitalize} (${Constants.orders})'
                                : e.name.capitalize,
                            backgroundColor: e == activeItem
                                ? Theme.of(context).primaryColor
                                : AppColors.inactiveColor,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class HomeUpperPart extends StatelessWidget {
  const HomeUpperPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaddingWrapper(
      padding: EdgeInsets.symmetric(
        horizontal: kHPad * .8,
        vertical: kVPad,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/icons/avatar.png',
                width: 40,
              ),
              Text(
                'Hey, Ahmed',
                style: h3TextStyle,
              ),
              Image.asset(
                'assets/icons/hand.png',
                width: 26,
              ),
            ],
          ),
          VSpace(),
          Text(
            'Multi-Services for Your Real Estate Needs',
            style: h2TextStyle,
          ),
          VSpace(factor: .3),
          Text(
            'Explore diverse real estate services for all your needs: property management, construction, insurance and more in one place.',
            style: h4TextStyleInactive,
          ),
          VSpace(),
          SliderViewer(),
          VSpace(factor: .5),
          SliderDots(),
          VSpace(),
        ],
      ),
    );
  }
}

class SliderViewer extends StatelessWidget {
  const SliderViewer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kHPad / 2,
        vertical: kVPad,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(mediumBorderRadius),
        color: AppColors.cardBackground,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Text(
                  'Multi-Services for Your Real Estate Needs',
                  style: h3TextStyle,
                ),
                VSpace(factor: .5),
                MainButton(
                  backgroundColor: Theme.of(context).primaryColor,
                  onTap: () {},
                  style: h4LightTextStyle,
                  title: 'Order',
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/icons/main.png',
            width: 150,
          ),
        ],
      ),
    );
  }
}

class SliderDots extends StatelessWidget {
  const SliderDots({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Dot(),
        HSpace(factor: .5),
        Container(
          width: largeIconSize,
          height: dotRadius,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1000),
            color: Theme.of(context).primaryColor,
          ),
        ),
        HSpace(factor: .5),
        Dot(),
      ],
    );
  }
}
