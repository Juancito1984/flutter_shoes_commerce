import 'package:flutter/material.dart';
import 'package:flutter_shoes_commerce/app/modules/home_module/widgets/newRichText.dart';
import 'package:flutter_shoes_commerce/app/theme/app_colors.dart';

import 'package:get/get.dart';

import 'package:flutter_shoes_commerce/app/utils/constants.dart';
import 'package:flutter_shoes_commerce/app/modules/home_screen_module/home_screen_controller.dart';

import 'widgets/new_richt_text_screen.dart';

class HomeScreenPage extends GetView<HomeScreenController> {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(icMenu),
          onPressed: () {},
        ),
        title: const Text('HomeScreen Page'),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Image.asset(icSearch),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset(imgbanner),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const NewRichtTextScreen(text: 'New Release'),
                      const SizedBox(height: 10),
                      const NewRichtTextScreen(
                        text: 'Nike Air\nMax 90',
                        fontSize: 28,
                      ),
                      const SizedBox(height: 5),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text('Buy Now'.toUpperCase()),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: controller.buildCategories(),
            ),
          ),
        ],
      ),
    );
  }
}
