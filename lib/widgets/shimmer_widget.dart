import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.transparent,
      highlightColor: Theme.of(context).primaryColor,
      child: Container(
        width: 100,
        height: 20,
      ),
    );
  }
}
