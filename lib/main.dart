import 'dart:io';
import 'package:fhe_template/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  await initialize();

  Widget mainView = const WelcomeView();
  if (Platform.isAndroid) {
    if (FirebaseAuth.instance.currentUser != null) {
      mainView = const DashboardView();
    }
  }

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: mainView,
    ),
  );
}
