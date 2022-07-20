import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewImg extends StatelessWidget {
  final String pathImg;
  final BoxFit boxFit;

  const NewImg({
    Key? key,
    required this.pathImg,
    this.boxFit = BoxFit.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: const EdgeInsets.all(50),
        width: Get.width,
        child: Image.asset(
          pathImg,
          fit: boxFit,
        ),
      ),
    );
  }
}
