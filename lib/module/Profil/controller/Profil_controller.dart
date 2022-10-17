import 'package:fhe_template/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../view/Profil_view.dart';

class ProfilController extends GetxController {
  ProfilView? view;

  doLogout() async {
    await FirebaseAuth.instance.signOut();
    Get.offAll(const LoginView());
  }
}
