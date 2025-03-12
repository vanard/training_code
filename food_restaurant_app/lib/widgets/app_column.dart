import 'package:flutter/material.dart';
import 'package:food_restaurant_app/colors.dart';
import 'package:food_restaurant_app/util/dimensions.dart';
import 'package:food_restaurant_app/widgets/big_text.dart';
import 'package:food_restaurant_app/widgets/icon_with_text.dart';
import 'package:food_restaurant_app/widgets/small_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BigText(
            text: 'Corndog', size: Dimensions.font24, fontWeight: FontWeight.w500,
          ),
          BigText(
            text: '\$5.00',
          ),
        ],
      ),
      SizedBox(
        height: Dimensions.dimen10,
      ),
      Row(
        children: [
          Wrap(children: [
            ...List.generate(
                5,
                (index) => Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 16,
                    )),
          ]),
          SizedBox(
            width: Dimensions.dimen10,
          ),
          SmallText(
            text: "4.5",
          ),
          SizedBox(
            width: Dimensions.dimen10,
          ),
          SmallText(text: "(112) Reviews"),
        ],
      ),
      SizedBox(
        height: Dimensions.dimen15,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconWithText(
              icon: Icons.circle_sharp,
              text: "Normal",
              iconColor: AppColors.iconColor1),
          IconWithText(
            icon: Icons.location_on,
            text: "1.7 km",
            iconColor: AppColors.mainColor,
          ),
          IconWithText(
            icon: Icons.access_time_filled_rounded,
            text: "32 min",
            iconColor: AppColors.iconColor2,
          )
        ],
      ),
    ]);
  }
}
