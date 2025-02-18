import 'package:flutter/material.dart';
import 'package:food_restaurant_app/colors.dart';
import 'package:food_restaurant_app/widgets/big_text.dart';
import 'package:food_restaurant_app/widgets/small_text.dart';

class AppBarHomeFood extends StatefulWidget {
  const AppBarHomeFood({super.key});

  @override
  State<AppBarHomeFood> createState() => _AppBarHomeFoodState();
}

class _AppBarHomeFoodState extends State<AppBarHomeFood> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: const EdgeInsets.only(top: 45, bottom: 15),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                BigText(
                  text: "Restaurant",
                  color: AppColors.mainColor,
                ),
                Row(
                  children: [
                    SmallText(
                      text: "Location",
                      color: Colors.black54,
                    ),
                    Icon(
                      Icons.arrow_drop_down_rounded,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ],
            ),
            Center(
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
