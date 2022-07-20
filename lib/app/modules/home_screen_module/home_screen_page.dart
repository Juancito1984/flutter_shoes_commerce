import 'package:flutter/material.dart';
import 'package:flutter_shoes_commerce/app/data/data_product.dart';
import 'package:flutter_shoes_commerce/app/modules/home_screen_module/widgets/men_item.dart';
import 'package:flutter_shoes_commerce/app/modules/home_screen_module/widgets/product_item.dart';
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
        // title: const Text('HomeScreen Page'),
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
                  padding: const EdgeInsets.all(10),
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
              children: DataProduct.generateProducts()
                  .map((product) => ProductItem(product: product))
                  .toList(),
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: NewRichtTextScreen(
              text: 'New Men\'',
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          const MenItem()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: myOrange,
        onPressed: () {},
        elevation: 4.0,
        child: Container(
          margin: const EdgeInsets.all(15),
          child: const Icon(
            Icons.home_outlined,
            color: Colors.white,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {}, icon: Image.asset(icShop)),
            IconButton(onPressed: () {}, icon: Image.asset(icWishlist)),
            IconButton(onPressed: () {}, icon: Image.asset(icNotif)),
          ],
        ),
      ),
    );
  }
}
