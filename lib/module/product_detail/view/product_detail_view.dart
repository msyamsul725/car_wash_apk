import 'package:fhe_template/models/carWash/car_wash.dart';
import 'package:flutter/material.dart';
import '../controller/product_detail_controller.dart';

import 'package:get/get.dart';

class ProductDetailView extends StatelessWidget {
  final CarWash item;
  const ProductDetailView({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductDetailController>(
      init: ProductDetailController(),
      builder: (controller) {
        controller.view = this;

        var listSlider = ["satu", "dua", "tiga"];
        var stapper = 0;

        return Scaffold(
          appBar: AppBar(
            title: const Text("ProductDetail"),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      "Service Tracking",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                  Container(
                    height: 300,
                    width: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://i.ibb.co/z8YFxpG/logo1.png",
                        ),
                        fit: BoxFit.fitWidth,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.red,
                          height: 80.0,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            itemCount: listSlider.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              var item = listSlider[index];
                              return Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 15.0,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Stepper(currentStep: 0, steps: [
                          Step(
                              title: const Text(
                                "Order Complete",
                                style: TextStyle(
                                  fontSize: 10.0,
                                ),
                              ),
                              content: Container()),
                          Step(
                              title: const Text(
                                "In Progress",
                                style: TextStyle(
                                  fontSize: 10.0,
                                ),
                              ),
                              content: Container()),
                          Step(
                              title: const Text(
                                "Job Complete",
                                style: TextStyle(
                                  fontSize: 10.0,
                                ),
                              ),
                              content: Container())
                        ])
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
