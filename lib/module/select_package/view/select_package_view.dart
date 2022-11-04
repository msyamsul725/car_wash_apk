import 'package:fhe_template/core.dart';
import 'package:fhe_template/module/select_package/widget/header.dart';
import 'package:fhe_template/module/select_package/widget/package_wars.dart';
import 'package:fhe_template/module/select_package/widget/photo.dart';
import 'package:fhe_template/module/select_package/widget/reusible_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectPackageView extends StatelessWidget {
  final CarWash item;
  const SelectPackageView({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectPackageController>(
      init: SelectPackageController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  PhotoWars(
                      onChanged: (item) {
                        controller.photo = item.toString();
                        controller.update();
                      },
                      item: item),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const HeaderA(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  PackageWars(
                      onChanged: (data) {
                        controller.selectedNew = data.toString();
                        controller.update();
                      },
                      item: item),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10.0,
                  ),
                  QCheckBox(
                    onChanged: (value) {
                      controller.checkBox = value.toString();
                      controller.update();
                    },
                    label: "Tambah Pilihan :",
                    items: const [
                      {
                        "label": "Wax",
                        "price": 20,
                      },
                      {
                        "label": "Scratch Removal",
                        "price": 30,
                      },
                      {
                        "label": "Water-dot Removal",
                        "price": 30,
                      },
                      {
                        "label": "Post descri sap",
                        "price": 40,
                      },
                    ],
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffA22D4E),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // <-- Radius
                ),
              ),
              onPressed: () => Get.to(SelectDateView(
                item: {
                  "Checkbox": controller.checkBox,
                  "photo": item,
                  "package": controller.selectedNew
                },
              )),
              child: const Text("Next"),
            ),
          ),
        );
      },
    );
  }
}
