import 'package:flutter/material.dart';
import 'package:flutter_shoes_commerce/app/routes/app_pages.dart';

import 'package:get/get.dart';
import 'package:community_material_icon/community_material_icon.dart';

import 'package:flutter_shoes_commerce/app/modules/home_module/widgets/newImg.dart';
import 'package:flutter_shoes_commerce/app/modules/home_module/widgets/newRichText.dart';
import 'package:flutter_shoes_commerce/app/utils/constants.dart';

import 'package:flutter_shoes_commerce/app/theme/app_colors.dart';
import 'package:flutter_shoes_commerce/app/modules/home_module/home_controller.dart';

// import '../../routes/app_pages.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: myBlack,
        child: Stack(
          children: [
            Positioned(
              bottom: -250,
              child: Container(
                width: Get.size.width,
                height: Get.size.height,
                decoration: const BoxDecoration(
                  gradient: RadialGradient(
                    radius: 0.65,
                    colors: [
                      myOrange,
                      myBlack,
                    ],
                  ),
                ),
              ),
            ),
            const NewImg(pathImg: imgNikeText),
            const NewImg(pathImg: imgShoes, boxFit: BoxFit.cover),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.only(top: 40),
                height: Get.height * 0.5,
                child: Column(
                  children: [
                    const NewRichtText(text: 'LIVE YOUR\nPERFECT', fontSize: 37),
                    const SizedBox(height: 20),
                    const NewRichtText(text: 'Smart, gorgeous & fashionnable\n'),
                    const Spacer(),
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onVerticalDragUpdate: (details) {
                        int sensitivity = 8;
                        if (details.delta.dy < -sensitivity) {
                          Get.toNamed(Routes.HOME_SCREEN);
                        }
                      },
                      child: AbsorbPointer(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: GetBuilder<HomeController>(
                                builder: (_) {
                                  return Opacity(
                                    opacity: controller.opacity.value,
                                    child: const Icon(
                                      CommunityMaterialIcons.chevron_double_up,
                                      color: Colors.white,
                                      size: 50,
                                    ),
                                  );
                                },
                              ),
                            ),
                            const NewRichtText(
                              text: 'Get Started',
                              fontSize: 16,
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
