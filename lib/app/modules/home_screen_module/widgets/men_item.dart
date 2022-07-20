import 'package:flutter/material.dart';
import 'package:flutter_shoes_commerce/app/routes/app_pages.dart';
import 'package:flutter_shoes_commerce/app/theme/app_colors.dart';
import 'package:get/get.dart';

import '../../../data/data_product.dart';

class MenItem extends StatelessWidget {
  const MenItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.8,
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      padding: const EdgeInsets.all(5),
      children: DataProduct.generateProducts().map((product) {
        return Card(
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          elevation: 0,
          child: InkWell(
            onTap: () {
              Get.toNamed(Routes.DETAILS);
            },
            child: Container(
              margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    product.image,
                    height: 90,
                    width: double.infinity,
                  ),
                  const SizedBox(height: 5),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      text: product.type,
                      style: const TextStyle(color: myOrange, fontSize: 16.0),
                    ),
                  ),
                  const SizedBox(height: 5),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      text: product.title,
                      style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          text: '\$ ${product.price}',
                          style: const TextStyle(
                              color: Colors.black87, fontSize: 16.0),
                        ),
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        child: const Icon(Icons.add, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
