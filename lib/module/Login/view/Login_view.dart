import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../controller/Login_controller.dart';

import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 80.0,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20.0),
                    width: 200.0,
                    height: 260.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://i.ibb.co/p3pNM5f/Notifications-Monochromatic.png",
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
                  Container(
                    margin: const EdgeInsets.only(
                      left: 30.0,
                    ),
                    height: 20.0,
                  ),
                  const SizedBox(
                    width: 200.0,
                    child: Text(
                      "Welcome Back!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 86.0,
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      "Please login to your account",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(),
                    child: TextFormField(
                      initialValue: 'user@demo.com',
                      maxLength: 20,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        suffixIcon: Icon(
                          Icons.email,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        helperText: 'Enter your email address',
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(),
                    child: TextFormField(
                      initialValue: '123456',
                      maxLength: 20,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        suffixIcon: Icon(
                          Icons.password,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        helperText: 'Enter your password',
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    height: 60.0,
                    width: 360.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff0083F1),
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(64.0),
                        ),
                      ),
                      onPressed: () {
                        controller.doLoginEmail();
                      },
                      child: const Text("Sign In"),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 180.0,
                    ),
                    width: 120.0,
                    height: 48,
                    constraints: const BoxConstraints(
                      maxWidth: 240.0,
                    ),
                    child: ElevatedButton.icon(
                      icon: const Icon(MdiIcons.signDirection),
                      label: const Text(" Google"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[900],
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(64.0),
                        ),
                      ),
                      onPressed: () => controller.doLogin(),
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
