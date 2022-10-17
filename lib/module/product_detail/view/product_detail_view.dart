import 'package:flutter/material.dart';
import '../controller/product_detail_controller.dart';

import 'package:get/get.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductDetailController>(
      init: ProductDetailController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: const [
                  //body
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
