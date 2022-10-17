import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fhe_template/core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ProfilView extends StatelessWidget {
  const ProfilView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfilController>(
      init: ProfilController(),
      builder: (controller) {
        controller.view = this;

        List<Map<String, dynamic>> card1 = [
          {
            'name': 'Marks',
            'subname': 'Average: 8.9',
            'color': const Color(0xffFF9500),
            'icon':
                'https://capekngoding.com/uploads/62f5f1157da6a_icon_thumup.png',
          },
          {
            'name': 'Add Shop',
            'subname': 'None',
            'color': const Color(0xffFF3B30),
            'icon':
                'https://capekngoding.com/uploads/62f5f112a318c_icon_fire.png',
            'onTap': () => Get.to(const ListShopView())
          },
          {
            'name': 'History',
            'subname': '',
            'color': const Color(0xff34C759),
            'icon':
                'https://capekngoding.com/uploads/62f5f116098a3_icon_time.png',
            'onTap': () => Get.to(const FormPackageView())
          },
        ];

        return Scaffold(
          backgroundColor: const Color(0xffF3F5F9),
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(
              color: Colors.grey[900],
            ),
            titleTextStyle: TextStyle(
              color: Colors.grey[900],
            ),
            title: const Text("Profile"),
            actions: [
              IconButton(
                onPressed: () => controller.doLogout(),
                icon: const Icon(
                  Icons.logout,
                  size: 24.0,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  StreamBuilder<DocumentSnapshot<Object?>>(
                    stream: FirebaseFirestore.instance
                        .collection("users")
                        .doc(FirebaseAuth.instance.currentUser!.uid)
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) return const Text("Error");
                      if (!snapshot.hasData) return const Text("No Data");
                      Map item = (snapshot.data!.data() as Map);
                      item["id"] = snapshot.data!.id;
                      return Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 12.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(124 / 2),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.08),
                                    blurRadius: 24,
                                    offset: const Offset(0, 8),
                                    spreadRadius: 8)
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 42.0,
                                backgroundImage: NetworkImage(
                                  item["photo"] ??
                                      "https://i.ibb.co/S32HNjD/no-image.jpg",
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            item["full_name"],
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              top: 16.0,
                              bottom: 16.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Card(
                                  color: const Color(0xff34C759),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 12.0,
                                      right: 12.0,
                                      top: 4.0,
                                      bottom: 4.0,
                                    ),
                                    child: Text(
                                      item["email"],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 12.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 24,
                            offset: const Offset(0, 8),
                            spreadRadius: 8)
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Information",
                            style: TextStyle(
                              color: const Color(0xff3C3C43).withOpacity(0.6),
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Column(
                            children: card1.map(
                              (e) {
                                return SizedBox(
                                  height: 50,
                                  child: Material(
                                    color: Colors.white,
                                    child: InkWell(
                                      onTap: e['onTap'],
                                      child: Container(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Row(
                                          children: [
                                            Container(
                                                height: 28,
                                                width: 28,
                                                padding:
                                                    const EdgeInsets.all(5.5),
                                                decoration: BoxDecoration(
                                                  color: e['color'],
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                child:
                                                    Image.network(e['icon'])),
                                            const SizedBox(width: 16),
                                            Text(
                                              e['name'],
                                              style: const TextStyle(
                                                fontSize: 17,
                                              ),
                                            ),
                                            const Spacer(),
                                            Text(
                                              e['subname'],
                                              style: TextStyle(
                                                color: const Color(0xff3C3C43)
                                                    .withOpacity(0.6),
                                                fontSize: 17,
                                              ),
                                            ),
                                            const SizedBox(width: 6),
                                            const Icon(
                                              Icons.chevron_right,
                                              size: 24,
                                              color: Color(0xffD1D1D6),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ).toList(),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
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
