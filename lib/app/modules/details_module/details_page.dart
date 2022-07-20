import 'package:flutter/material.dart';
import 'package:flutter_shoes_commerce/app/utils/constants.dart';
import 'package:get/get.dart';
import 'package:flutter_shoes_commerce/app/modules/details_module/details_controller.dart';
import 'package:imageview360/imageview360.dart';

import '../../theme/app_colors.dart';

class DetailsPage extends GetView<DetailsController> {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text(
          'Men\' Shoes',
          style: TextStyle(color: myOrange),
        ),
        actions: [Image.asset(icSearch)],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: Get.size.width - 30,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 70),
                        child: Image.asset(ring),
                      ),
                    ),
                    ImageView360(
                      key: UniqueKey(),
                      autoRotate: controller.autoRotate,
                      rotationCount: controller.rotationCount,
                      swipeSensitivity: controller.swipeSensitivity,
                      allowSwipeToRotate: controller.allowSwipeToRotate,
                      imageList: controller.imageList,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
