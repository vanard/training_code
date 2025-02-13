import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;
  final double height;

  const SmallText({
    super.key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.size = 14,
    this.height = 1.2,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        height: height,
        fontFamily: 'Roboto',
      ),
    );
  }
}
