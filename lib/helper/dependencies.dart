import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

Future<void> init() async {
  //api client
  Get.lazyput(() => ApiClient(appBaseUrl: "api link"));
}
