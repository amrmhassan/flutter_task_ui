// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui_task/widgets/dot.dart';
import 'package:shared_code/shared_code.dart';

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
