import 'package:flutter/material.dart';
import 'package:food_restaurant_app/colors.dart';
import 'package:food_restaurant_app/widgets/big_text.dart';
import 'package:food_restaurant_app/widgets/icon_with_text.dart';
import 'package:food_restaurant_app/widgets/small_text.dart';

class HomeFoodBody extends StatefulWidget {
  const HomeFoodBody({super.key});

  @override
  State<HomeFoodBody> createState() => _HomeFoodBodyState();
}

class _HomeFoodBodyState extends State<HomeFoodBody> {
  PageController _pageController = PageController(viewportFraction: 0.8);

  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _heightCard = 220;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currPageValue = _pageController.page!;
        // print(_pageController.page);
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Matrix4 _pagerItemScaleAnimation(int index) {
    Matrix4 matrix4 = Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _heightCard * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
          var currTrans = _heightCard * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _heightCard * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      var currTrans = _heightCard * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 1);
    }

    return matrix4;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      child: PageView.builder(
          controller: _pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPagerItem(position);
          }),
    );
  }

  Widget _buildPagerItem(int index) {
    return Transform(
      transform: _pagerItemScaleAnimation(index),
      child: Stack(children: [
        Container(
          height: 240,
          margin: EdgeInsets.only(left: 8, right: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
            // image: DecorationImage(
            //   image: AssetImage("assets/images/food.jpg"),
            //   fit: BoxFit.cover,
            // ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 15, right: 15),
              height: 120,
              margin: EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: index.isEven
                    ? Color.fromARGB(255, 105, 223, 111)
                    : Color.fromARGB(255, 164, 204, 146),
                // image: DecorationImage(
                //   image: AssetImage("assets/images/food.jpg"),
                //   fit: BoxFit.cover,
                // ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(
                    text: "Food Name",
                  ),
                  SizedBox(
                    height: 8,
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
                        width: 10,
                      ),
                      SmallText(
                        text: "4.5",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SmallText(text: "(200) Reviews"),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
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
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
