import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController {
  List<ImageProvider> imageList = [];
  bool autoRotate = false;
  int rotationCount = 22;
  int swipeSensitivity = 2;
  bool allowSwipeToRotate = true;

  void updateImageList() {
    for (int i = 1; i <= 21; ++i) {
      imageList.add(AssetImage('assets/png/s$i.png'));
    }
  }

  @override
  void onInit() {
    updateImageList();
    super.onInit();
  }
}
