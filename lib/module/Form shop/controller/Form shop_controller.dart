import 'package:fhe_template/models/carWash/car_wash.dart';
import 'package:fhe_template/services/formShop_services.dart';
import 'package:get/get.dart';
import '../../../shared/util/input/input.dart';
import '../view/Form shop_view.dart';

class FormShopController extends GetxController {
  FormShopView? view;

  doSave() async {
    var shopName = Input.get("shop_name");
    var photo = Input.get("photo");
    var addres = Input.get("addres");
    var rating = Input.get("rating");
    var description = Input.get("description");

    CarWashService.addProduct(CarWash(
      shopName: shopName,
      photo: photo,
      addres: addres,
      rating: rating,
      description: description,
    ));
    Get.back();
  }
}
