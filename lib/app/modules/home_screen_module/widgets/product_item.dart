import 'package:flutter/material.dart';
import 'package:flutter_shoes_commerce/app/models/product_model.dart';

import '../../../theme/app_colors.dart';

class ProductItem extends StatelessWidget {
  final ProductModel product;

  const ProductItem({
    Key? key,
    required this.product,
  }) : super(key: key);
//cghghfhfg
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, bottom: 10),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: product.id == 1 ? myOrange : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        //j
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  color: myBlack,
                  child: Image.asset(product.image),
                ),
              ),
              const SizedBox(width: 18),
              Text(
                product.title,
                style: const TextStyle(fontSize: 14),
              )
            ],
          ),
        ),
      ),
    );
  }
}
