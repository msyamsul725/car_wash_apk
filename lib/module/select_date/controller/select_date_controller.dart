import 'package:get/get.dart';
import '../view/select_date_view.dart';

class SelectDateController extends GetxController {
  SelectDateView? view;
  var selectedTime = "";
  var selectedDay = "";

  refreshDate() {
    update();
  }
}
