import 'package:fhe_template/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../../services/user_service.dart';

class LoginController extends GetxController {
  LoginView? view;

  doLogin() async {
    GoogleSignIn googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );

    try {
      await googleSignIn.disconnect();
    } catch (_) {}

    try {
      GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      var userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      debugPrint("userCredential: userCredential");
      //TODO: on login success
      //------------------

      Get.offAll(const MainNavigationView());
      await UserService.doSaveUserData();
      debugPrint("ok");
    } catch (_) {
      debugPrint("gagal login bray");
    }
  }

  doLoginEmail() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: "user@demo.com",
        password: "123456",
      );
      //----->
      Get.offAll(const MainNavigationView());
    } on Exception catch (_) {
      Get.snackbar("Gagal", "Periksa Email & Password Kembali");
    }
  }
}
