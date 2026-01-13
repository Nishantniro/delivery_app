// import 'package:get/get.dart';
// import 'package:khamkham/controllers/popular_product_controller.dart';
// import 'package:khamkham/data/api/api_client.dart';
// import 'package:khamkham/data/repository/popular_product_repo.dart';

// Future<void> init() async {
//   //api client
//   Get.lazyPut(() => ApiClient(appBaseUrl: "www.facebook.com"));

//   //REPOSITORIES
//   Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

//   //controllers
//   Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
// }
import 'package:get/get.dart';
import 'package:khamkham/controllers/popular_product_controller.dart';
import 'package:khamkham/data/api/api_client.dart';
import 'package:khamkham/data/repository/popular_product_repo.dart';

Future<void> init() async {
  //for api client
  Get.lazyPut(() => ApiClient(appBaseUrl: "www.example.com"));
  // for repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  // for controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
