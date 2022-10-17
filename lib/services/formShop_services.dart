import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fhe_template/models/carWash/car_wash.dart';

class CarWashService {
  static addProduct(CarWash carWash) async {
    await FirebaseFirestore.instance.collection("carwash").add({
      "shop_name": carWash.shopName,
      "photo": carWash.photo,
      "addres": carWash.addres,
      "rating": carWash.rating,
      "description": carWash.description,
    });
  }

  static addPackage(
      {required String title,
      required String price,
      required String duration,
      required String description,
      required String idtoko}) async {
    await FirebaseFirestore.instance.collection("package_item").add({
      "toko_id": idtoko,
      "title_package": title,
      "price_package": price,
      "duration_package": duration,
      "description_package": description,
    });
  }
}
