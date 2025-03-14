import 'package:flutter/material.dart';
import 'package:food_restaurant_app/colors.dart';
import 'package:food_restaurant_app/util/dimensions.dart';
import 'package:food_restaurant_app/widgets/app_column.dart';
import 'package:food_restaurant_app/widgets/app_icon.dart';
import 'package:food_restaurant_app/widgets/big_text.dart';
import 'package:food_restaurant_app/widgets/expandable_text.dart';

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
                  AppColumn(
                    text: "CornDog",
                  ),
                  SizedBox(
                    height: Dimensions.dimen20,
                  ),
                  BigText(text: "Introduce"),
                  SizedBox(
                    height: Dimensions.dimen10,
                  ),
                  ExpandableTextWidget(text: "CornDog is a hot dog sausage coated in a thick layer of cornmeal batter. It is typically deep fried and served on a stick. Corn dogs are often served as street food or as fast food. The concept of a hot dog on a stick coated in cornmeal batter is not new, and is commonly believed to have been introduced to the United",),
                  // Expanded(child: SingleChildScrollView(child: ExpandableTextWidget(text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.  At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat."))),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.dimen5, vertical: Dimensions.dimen10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimensions.dimen15),
              ),
              child: Row(
                children: [
                  AppIcon(
                      icon: Icons.remove,
                      backgroundColor: Colors.white,
                      iconColor: AppColors.signColor),
                  SizedBox(
                    width: Dimensions.dimen10,
                  ),
                  BigText(text: "1"),
                  SizedBox(
                    width: Dimensions.dimen10,
                  ),
                  AppIcon(
                    icon: Icons.add,
                    backgroundColor: Colors.white,
                    iconColor: AppColors.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.dimen15,
                vertical: Dimensions.dimen15,
              ),
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(Dimensions.dimen15),
              ),
              child: BigText(text: "\$12.00 | Add to cart", color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }
}
