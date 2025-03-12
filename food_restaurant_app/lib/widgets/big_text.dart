import 'package:flutter/material.dart';
import 'package:food_restaurant_app/util/dimensions.dart';

class BigText extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;
  final FontWeight fontWeight;
  final TextOverflow textOverflow;

  const BigText({
    super.key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.size = 0,
    this.fontWeight = FontWeight.w400,
    this.textOverflow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: textOverflow,
      style: TextStyle(
        fontSize: size < 1 ? Dimensions.font20 : size,
        color: color,
        fontWeight: fontWeight,
        fontFamily: 'Roboto',
      ),
    );
  }
}
