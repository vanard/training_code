import 'package:flutter/material.dart';
import 'package:food_restaurant_app/widgets/small_text.dart';

class IconWithText extends StatelessWidget {
  final IconData  icon;
  final String text;
  final Color?  color;
  final Color? iconColor;
  

  const IconWithText({super.key, required this.icon, required this.text, this.color, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor,),
        SizedBox(width: 5,),
        SmallText(text: text, color: color,),
      ],
    );
  }
}