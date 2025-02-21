import 'package:flutter/material.dart';
import 'package:food_restaurant_app/util/dimensions.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  final Function? function;

  const AppIcon(
      {super.key,
      this.function,
      required this.icon,
      this.backgroundColor = const Color(0xFFfcf4e4),
      this.iconColor = const Color(0xFF756d54),
      this.size = 40});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(size / 2),
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: Dimensions.font16, //size / 2.5,
      ),
    );
  }
}
