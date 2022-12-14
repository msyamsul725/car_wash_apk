import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserService {
  static doSaveUserData() async {
    var snapshot = await FirebaseFirestore.instance
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();
    if (snapshot.exists) return;

    await FirebaseFirestore.instance
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .set({
      "email": FirebaseAuth.instance.currentUser!.email,
      "photo": FirebaseAuth.instance.currentUser!.photoURL ??
          "https://i.ibb.co/S32HNjD/no-image.jpg",
      "full_name": FirebaseAuth.instance.currentUser!.displayName ?? "No name",
    });
  }

  static doSaveUserDataEmail(
      {required String email, required String name}) async {
    var snapshot =
        await FirebaseFirestore.instance.collection("users").doc(email).get();
    if (snapshot.exists) return;

    await FirebaseFirestore.instance
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .set({
      "email": email,
      "photo": "https://i.ibb.co/S32HNjD/no-image.jpg",
      "full_name": name,
    });
  }
}
