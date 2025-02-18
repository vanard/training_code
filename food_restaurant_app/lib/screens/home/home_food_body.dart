import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_restaurant_app/colors.dart';
import 'package:food_restaurant_app/util/dimensions.dart';
import 'package:food_restaurant_app/widgets/big_text.dart';
import 'package:food_restaurant_app/widgets/icon_with_text.dart';
import 'package:food_restaurant_app/widgets/small_text.dart';

class HomeFoodBody extends StatefulWidget {
  const HomeFoodBody({super.key});

  @override
  State<HomeFoodBody> createState() => _HomeFoodBodyState();
}

class _HomeFoodBodyState extends State<HomeFoodBody> {
  PageController _pageController = PageController(viewportFraction: 0.85);

  var _currPageValue = 0.0;
  double _scaleFactor = 0.82;
  // double _heightCard = 205;
   double _heightCard = Dimensions.pagerViewContainerHeight;

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
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _heightCard * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _heightCard * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currTrans = _heightCard * (1 - _scaleFactor) / 2;
      matrix4 = Matrix4.diagonal3Values(1, _scaleFactor, 1)
        ..setTranslationRaw(0, currTrans, 1);
    }

    return matrix4;
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    print("phone height:" + height.toString());
    print("phone width:" + width.toString());

    return Column(
      children: [
        Container(
          // height: 300,
          height: Dimensions.pagerViewHeight,
          child: PageView.builder(
              controller: _pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPagerItem(position);
              }),
        ),
        DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
      ],
    );
  }

  Widget _buildPagerItem(int index) {
    return Transform(
      transform: _pagerItemScaleAnimation(index),
      child: Stack(children: [
        Container(
          height: _heightCard,
          margin: EdgeInsets.only(left: Dimensions.dimen10, right: Dimensions.dimen10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.dimen30),
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
            padding: EdgeInsets.only(top: Dimensions.dimen15, left: Dimensions.dimen20, right: Dimensions.dimen20, bottom: Dimensions.dimen15),
            // height: 128,
            height: Dimensions.pagerViewTextContainerHeight,
            margin: EdgeInsets.only(left: Dimensions.dimen25, right: Dimensions.dimen25, bottom: Dimensions.dimen20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.dimen30),
              color: Colors.white,
              // image: DecorationImage(
              //   image: AssetImage("assets/images/food.jpg"),
              //   fit: BoxFit.cover,
              // ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withValues(alpha: 0.4),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(3, 5),
                )
              ],
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
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
