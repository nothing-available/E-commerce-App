import 'package:get/get.dart';

class Dimension {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // adjust automatically
  static double pageViewContainer = screenHeight / 3.45;
  static double pageViewTextContainer = screenHeight / 6.32;
  static double pageView = screenHeight / 2.31;
 //dynamic height --> for padding and margin
  static double height10 = screenHeight / 76.9;
  static double height20 = screenHeight / 37.95;
  static double height15 = screenHeight / 50.6;
  static double height30 = screenHeight / 25.3;
  static double height45 = screenHeight / 16.86;

  static double font20 = screenHeight / 37.95;
// radius
  static double radius20 = screenHeight / 37.95;
  static double radius30 = screenHeight / 25.3;
  static double radius15 = screenHeight / 50.6;

//dynamic width --> padding and margin
  static double width10 = screenHeight / 76.9;
  static double width15 = screenHeight / 50.6;
  static double width20 = screenHeight / 37.95;
  static double width30 = screenHeight / 25.3;

  //icon size
  static double iconSize24 = screenHeight / 31.62;
}
