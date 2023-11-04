import 'package:flutter/material.dart';
import 'package:shared_code/shared_code.dart';
import 'package:shared_code/shared_code/helper/responsive.dart';

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
