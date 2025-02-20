import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // 866.3 / 300 = 2.887 (heightScreen / heightCard)
  static double pagerViewHeight = screenHeight / 2.7945;
  // 866.3 / 205 = 4.225 (heightScreen / heightCard)
  static double pagerViewContainerHeight = screenHeight / 4.3315; // 4.225;  3.9377;  4.125238;
  // 866.3 / 110 = 7.8754 (heightScreen / heightCard2)
  static double pagerViewTextContainerHeight = screenHeight / 7.21916;

//dynamic height
  // static double height10 = screenHeight / 86.63;
  // static double height15 = screenHeight / 57.753;
  // static double height20 = screenHeight / 43.315;

//dynamic width
  // static double width10 = screenWidth / 86.63;
  // static double width15 = screenWidth / 57.753;
  // static double width20 = screenWidth / 43.315;
  // static double width25 = screenWidth / 34.652;

  static double dimen2 = screenHeight / 433.15;
  static double dimen5 = screenHeight / 173.26;
  static double dimen10 = screenHeight / 86.62;
  static double dimen15 = screenHeight / 57.747;
  static double dimen20 = screenHeight / 43.31;
  static double dimen25 = screenHeight / 34.648;
  static double dimen30 = screenHeight / 28.873;
  static double dimen35 = screenHeight / 24.74857;
  static double dimen40 = screenHeight / 21.655;
  static double dimen45 = screenHeight / 19.24889;
  static double dimen100 = screenHeight / 8.663;
  static double dimen120 = screenHeight / 7.21916;

  static double font24 = screenHeight / 36.091667;
  static double font20 = screenHeight / 43.31;
  static double font16 = screenHeight / 54.1375;
  static double font12 = screenHeight / 72.183334;
}
