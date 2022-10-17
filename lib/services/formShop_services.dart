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
}
