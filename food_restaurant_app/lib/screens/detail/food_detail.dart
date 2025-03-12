import 'package:flutter/material.dart';
import 'package:food_restaurant_app/colors.dart';
import 'package:food_restaurant_app/util/dimensions.dart';
import 'package:food_restaurant_app/widgets/app_column.dart';
import 'package:food_restaurant_app/widgets/app_icon.dart';
import 'package:food_restaurant_app/widgets/big_text.dart';

class FoodDetailScreen extends StatelessWidget {
  const FoodDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: "CornDog",),
                  SizedBox(
                    height: Dimensions.dimen20,
                  ),
                  BigText(text: "Introduce"),
                  SizedBox(
                    height: Dimensions.dimen15,
                  ),

                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.dimen100,
        padding: EdgeInsets.only(
          left: Dimensions.dimen20,
          right: Dimensions.dimen20,
          top: Dimensions.dimen20,
          bottom: Dimensions.dimen10,
        ),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.dimen35),
            topRight: Radius.circular(Dimensions.dimen35),
          ),
        ),
      ),
    );
  }
}
