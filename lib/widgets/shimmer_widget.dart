import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final Color backgroundColor;
  final Color baseColor;
  final Color highlightColor;

  const ShimmerWidget({
    super.key,
    this.width = 10,
    this.height = 20,
    this.borderRadius = 0,
    this.backgroundColor = Colors.white,
    this.baseColor = Colors.white,
    this.highlightColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(
            borderRadius,
          ),
        ),
      ),
    );
  }
}
