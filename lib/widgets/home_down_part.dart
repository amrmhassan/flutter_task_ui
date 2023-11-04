// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shared_code/shared_code.dart';
import 'package:shared_code/shared_code/helper/responsive.dart';
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
  HomeNavBarItem activeItem = HomeNavBarItem.categories;

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
          Expanded(
            child: activeItem == HomeNavBarItem.categories
                ? CategoriesWidget()
                : activeItem == HomeNavBarItem.orders
                    ? NoOrders()
                    : NoServices(),
          ),
        ],
      ),
    );
  }
}

class NoOrders extends StatelessWidget {
  const NoOrders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VSpace(),
        Image.asset(
          'assets/icons/empty.png',
          width: Responsive.getWidth(context) * .6,
        ),
        VSpace(factor: .2),
        Text(
          'No orders found',
          style: h2TextStyle,
        ),
        Text(
          'you can place your needed orders to let serve you',
          style: h4TextStyleInactive,
        ),
      ],
    );
  }
}

class NoServices extends StatelessWidget {
  const NoServices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VSpace(),
        Image.asset(
          'assets/icons/empty.png',
          width: Responsive.getWidth(context) * .6,
        ),
        VSpace(factor: .2),
        Text(
          'No services found',
          style: h2TextStyle,
        ),
        Text(
          'there is no services yet!',
          style: h4TextStyleInactive,
        ),
      ],
    );
  }
}

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                        style: h3TextStyle.copyWith(),
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
    );
  }
}
