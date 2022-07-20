import 'package:flutter/material.dart';
import 'package:flutter_shoes_commerce/app/data/data_product.dart';
import 'package:flutter_shoes_commerce/app/modules/home_screen_module/widgets/product_item.dart';
import 'package:flutter_shoes_commerce/app/theme/app_colors.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  List<Widget> buildCategories() {
    return DataProduct.generateProducts()
        .map((product) => ProductItem(product: product))
        .toList();
  }
}
