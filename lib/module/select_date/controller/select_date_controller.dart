import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class SelectDateController extends GetxController {
  SelectDateView? view;
  var selectedTime = "";

  Rxn<DateTime> selectedDay = Rxn<DateTime>();

  doBuy() async {
    String checkbox = view!.item["Checkbox"];
    var package = view!.item["package"];

    await FirebaseFirestore.instance.collection("order").add({
      "carswash": view!.item,
      "addition": checkbox,
      "package": package,
      "selectedTime": selectedTime,
      "day": selectedDay.value,
    });
    Get.off(const MainNavigationView());
  }
}
