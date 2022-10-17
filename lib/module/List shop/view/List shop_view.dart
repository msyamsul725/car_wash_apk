import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fhe_template/core.dart';
import 'package:fhe_template/models/carWash/car_wash.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ListShopView extends StatelessWidget {
  const ListShopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ListShopController>(
      init: ListShopController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("ListShop"),
            actions: [
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Add"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => Get.to(const FormShopView()),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance
                        .collection("carwash")
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) return const Text("Error");
                      if (snapshot.data == null) return Container();
                      if (snapshot.data!.docs.isEmpty) {
                        return const Text("No Data");
                      }
                      final data = snapshot.data!;
                      return SizedBox(
                        width: 360.0,
                        height: 360.0,
                        child: ListView.builder(
                          itemCount: data.docs.length,
                          itemBuilder: (context, index) {
                            Map<String, dynamic> item = (data.docs[index].data()
                                as Map<String, dynamic>);
                            item["id"] = data.docs[index].id;
                            var carwash = CarWash.fromJson(item);
                            return Row(
                              children: [
                                Expanded(
                                  child: Card(
                                    child: ListTile(
                                      leading: CircleAvatar(
                                        backgroundColor: Colors.grey[200],
                                        backgroundImage: NetworkImage(
                                          carwash.photo ??
                                              "https://i.ibb.co/S32HNjD/no-image.jpg",
                                        ),
                                      ),
                                      title: Text(carwash.shopName ?? "_"),
                                      subtitle: Text(carwash.addres ?? "_"),
                                      trailing: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.edit,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    FirebaseFirestore.instance
                                        .collection("carwash")
                                        .doc(item["id"])
                                        .delete();
                                  },
                                  icon: const Icon(
                                    Icons.delete,
                                    size: 24.0,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      );
                    },
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
