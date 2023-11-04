import 'package:flutter/material.dart';
import 'package:shared_code/shared_code.dart';
import 'package:ui_task/constants/colors.dart';

const double dotRadius = smallIconSize * .5;

class Dot extends StatelessWidget {
  const Dot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: dotRadius,
      height: dotRadius,
      decoration: BoxDecoration(
        color: AppColors.inactiveColor,
        borderRadius: BorderRadius.circular(1000),
      ),
    );
  }
}
