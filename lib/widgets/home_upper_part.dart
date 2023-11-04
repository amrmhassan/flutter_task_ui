// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shared_code/shared_code.dart';
import 'package:ui_task/widgets/slider_dots.dart';
import 'package:ui_task/widgets/slider_viewer.dart';

class HomeUpperPart extends StatelessWidget {
  const HomeUpperPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PaddingWrapper(
      padding: EdgeInsets.symmetric(
        horizontal: kHPad * .8,
        vertical: kVPad / 2,
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
          VSpace(factor: .1),
          Text(
            'Explore diverse real estate services for all your needs: property management, construction, insurance and more in one place.',
            style: h4TextStyleInactive,
          ),
          VSpace(factor: .8),
          SliderViewer(),
          VSpace(factor: .5),
          SliderDots(),
          // VSpace(),
        ],
      ),
    );
  }
}
