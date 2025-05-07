import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight / 2.56;
  static double pageViewContainer = screenHeight / 3.84;
  static double pageViewTextContainer =
      screenHeight / 6; //tect container height which is in stack widget
  static double height5 = screenHeight / 168; //sizedbox height
  static double height30 = screenHeight / 28; //sizedbox height
  static double height15 = screenHeight / 56; //sizedbox height
}
