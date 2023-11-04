import 'package:flutter/material.dart';
import 'package:shared_code/shared_code.dart';
import 'package:shared_code/shared_code/helper/responsive.dart';

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
