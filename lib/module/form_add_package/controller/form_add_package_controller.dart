import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../services/formShop_services.dart';
import '../view/form_add_package_view.dart';

class FormAddPackageController extends GetxController {
  FormAddPackageView? view;
  String tokoId = "";
  String titlePackage = "";
  String price_package = "";
  String duration_package = "";
  String description_package = "";
  String photo = "";

  addDataPackage() {
    debugPrint("tokoId: $tokoId");
    debugPrint("titlePackage: $titlePackage");
    debugPrint("price_package: $price_package");
    debugPrint("duration_package: $duration_package");
    debugPrint("description_package: $description_package");

    CarWashService.addPackage(
        title: titlePackage,
        price: price_package,
        duration: duration_package,
        description: description_package,
        idtoko: tokoId);
    Get.back();
  }
}
