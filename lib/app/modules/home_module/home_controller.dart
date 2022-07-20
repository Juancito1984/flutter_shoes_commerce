import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> position;
  late Animation<double> opacity;

  @override
  void onInit() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    position = Tween<double>(begin: 20, end: 50).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0, 1),
      )..addListener(() {
          update();
        }),
    );

    opacity = Tween<double>(begin: 1, end: 0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0, 1),
      )..addListener(() {
        update();
      }),
    );

    controller.repeat();

    super.onInit();
  }
}
