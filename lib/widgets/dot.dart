import 'package:flutter/material.dart';
import 'package:shared_code/shared_code.dart';

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
        color: Colors.grey.withOpacity(.3),
        borderRadius: BorderRadius.circular(1000),
      ),
    );
  }
}
