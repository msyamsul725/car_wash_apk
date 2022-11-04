import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/route_manager.dart';

import '../models/carWash/car_wash.dart';
import '../module/main_navigation/view/main_navigation_view.dart';

class OrderWars {
  static addOrder({
    required var checkbox,
    required var package,
    required List<CarWash> items,
    required var day,
    required var time,
  }) async {
    var washList = [];

    for (var i = 0; i < items.length; i++) {
      var carwash = items[i];

      washList.add({
        "carwash_id": carwash.id,
        "carwash_name": carwash.shopName,
        "photo": carwash.photo,
        "addres": carwash.addres,
        "rating": carwash.rating,
        "description": carwash.description,
      });
    }

    await FirebaseFirestore.instance.collection("order").add({
      // "item": washList,
      "addition": checkbox,
      "package": package,
      "selectedTime": time,
      "day": day,
    });
    Get.off(const MainNavigationView());
  }
}
