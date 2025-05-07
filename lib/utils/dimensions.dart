import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight / 2.50;
  static double pageViewContainer = screenHeight / 3.63;
  static double pageViewTextContainer =
      screenHeight / 6.66; //tect container height which is in stack widget
  static double height5 = screenHeight / 160; //sizedbox height
  static double height30 = screenHeight / 26.66; //sizedbox height
  static double height15 = screenHeight / 53.33; //sizedbox height
}
