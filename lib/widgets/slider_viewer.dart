// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shared_code/shared_code.dart';
import 'package:ui_task/constants/colors.dart';

class SliderViewer extends StatelessWidget {
  const SliderViewer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kHPad / 2,
        vertical: 0,
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
                Row(
                  children: [
                    MainButton(
                      padding: EdgeInsets.symmetric(vertical: kVPad / 3),
                      backgroundColor: Theme.of(context).primaryColor,
                      onTap: () {},
                      width: largeIconSize * 3.5,
                      style: h4LightTextStyle,
                      title: 'Order',
                    ),
                  ],
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/icons/main.png',
            width: 130,
          ),
        ],
      ),
    );
  }
}
