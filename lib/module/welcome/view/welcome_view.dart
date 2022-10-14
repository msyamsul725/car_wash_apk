import 'package:fhe_template/module/Login/view/Login_view.dart';
import 'package:flutter/material.dart';
import '../controller/welcome_controller.dart';

import 'package:get/get.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WelcomeController>(
      init: WelcomeController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          backgroundColor: const Color(0xff0083F1),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  //body
                  const SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 20.0,
                      right: 100.0,
                    ),
                    width: 200.0,
                    height: 160.0,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                    child: const Text(
                      "Car Wash",
                      style: TextStyle(
                        fontSize: 58.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60.0,
                  ),
                  Container(
                    height: 340.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://i.ibb.co/ss33n42/Pin-Clipart-com-car-wash-school-fundraiser-5320705.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 80.0,
                  ),
                  Container(
                    width: 360.0,
                    height: 70.0,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 28,
                          offset: Offset(0, 11),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14), // <-- Radius
                        ),
                      ),
                      onPressed: () => Get.to(const LoginView()),
                      child: const Text(
                        "Next",
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
