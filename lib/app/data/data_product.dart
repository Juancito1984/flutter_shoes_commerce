import 'package:flutter_shoes_commerce/app/utils/constants.dart';

import '../models/product_model.dart';

class DataProduct {
  static List<ProductModel> generateProducts() {
    return [
      ProductModel(
        id: 1,
        image: shoes1,
        title: 'Create Impact',
        type: 'Men\'s Shoes',
        descripcion: 'men shoes',
        price: 99.56,
      ),
      ProductModel(
        id: 2,
        image: shoes2,
        title: 'Air - Max Pre Day',
        type: 'Men\'s Shoes',
        descripcion: 'men shoes',
        price: 137.56,
      ),
      ProductModel(
        id: 3,
        image: shoes3,
        title: 'Air Max 51',
        type: 'Men\'s Shoes',
        descripcion: 'men shoes',
        price: 99.56,
      ),
      ProductModel(
        id: 4,
        image: shoes4,
        title: 'Rugby',
        type: 'Men\'s Shoes',
        descripcion: 'men shoes',
        price: 212.56,
      ),
    ];
  }
}
