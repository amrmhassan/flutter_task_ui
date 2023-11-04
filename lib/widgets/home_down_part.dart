// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shared_code/shared_code.dart';
import 'package:ui_task/constants/colors.dart';
import 'package:ui_task/constants/constants.dart';
import 'package:ui_task/pages/home_page.dart';
import 'package:ui_task/widgets/navbar_items_widget.dart';

class HomeDownPart extends StatefulWidget {
  const HomeDownPart({super.key});

  @override
  State<HomeDownPart> createState() => _HomeDownPartState();
}

class _HomeDownPartState extends State<HomeDownPart> {
  NavBarItem activeItem = NavBarItem.categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kHPad / 2,
        vertical: kVPad * .5,
      ),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
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
          VSpace(factor: .5),
          Row(
            children: [
              Text(
                'Categories View',
                style: h3TextStyle,
              ),
              Spacer(),
              Text(
                'See all',
                style: h4TextStyleInactive.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
          VSpace(factor: .5),
          Expanded(
              child: ListView.builder(
            itemCount: CategoriesList.models.length,
            itemBuilder: (context, index) {
              var model = CategoriesList.models[index];
              return PaddingWrapper(
                padding: EdgeInsets.symmetric(horizontal: kHPad / 2),
                child: Column(
                  children: [
                    VSpace(
                      factor: .5,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/categories/${model.iconName}.png',
                          width: largeIconSize,
                        ),
                        HSpace(factor: .5),
                        Text(
                          model.title,
                          style: h3TextStyle,
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    VSpace(factor: .25),
                    HLine(
                      thickness: .8,
                      color: AppColors.inactiveColor,
                    )
                  ],
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
