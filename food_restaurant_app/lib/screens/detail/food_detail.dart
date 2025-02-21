import 'package:flutter/material.dart';
import 'package:food_restaurant_app/colors.dart';
import 'package:food_restaurant_app/util/dimensions.dart';
import 'package:food_restaurant_app/widgets/app_icon.dart';
import 'package:food_restaurant_app/widgets/icon_with_text.dart';
import 'package:food_restaurant_app/widgets/small_text.dart';

class FoodDetailScreen extends StatelessWidget {
  const FoodDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.foodDetailImageHeight,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Corndog.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              )),
          Positioned(
              top: Dimensions.dimen40,
              left: Dimensions.dimen20,
              right: Dimensions.dimen20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(
                    icon: Icons.arrow_back_ios,
                  ),
                  AppIcon(
                    icon: Icons.shopping_cart_checkout_outlined,
                  ),
                ],
              )),
          Positioned(
            left: 0,
            right: 0,
            top: Dimensions.foodDetailImageHeight - Dimensions.dimen30,
            child: Container(
              // height: Dimensions.dimen120,
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.dimen20,
                vertical: Dimensions.dimen20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.dimen20),
                  topRight: Radius.circular(Dimensions.dimen20),
                ),
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Corndog',
                      style: TextStyle(
                        fontSize: Dimensions.font24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '\$5.00',
                      style: TextStyle(
                        fontSize: Dimensions.font24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
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
                  height: Dimensions.dimen10,
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
              ]),
            ),
          )
        ],
      ),
    );
  }
}
