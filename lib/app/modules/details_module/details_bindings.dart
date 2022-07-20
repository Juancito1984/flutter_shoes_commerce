import 'package:flutter_shoes_commerce/app/modules/details_module/details_controller.dart';
import 'package:get/get.dart';
/**
 * GetX Template Generator - fb.com/htngu.99
 * */

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailsController());
  }
}