import 'package:e_commerce_app/data/api/api_client.dart';
import 'package:e_commerce_app/data/controller/popular_product_controller.dart';
import 'package:e_commerce_app/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

Future<void> init() async {

  // api client
  Get.lazyPut(() => ApiClient(appBaseUrl: ""));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
