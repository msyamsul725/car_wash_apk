import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class FormAddPackageView extends StatelessWidget {
  const FormAddPackageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FormAddPackageController>(
      init: FormAddPackageController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("FormAddPackage"),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  ExTextField(
                    id: "title",
                    label: "title",
                    onChanged: (text) {
                      controller.titlePackage = text;
                    },
                  ),
                  ExTextField(
                    id: "price",
                    label: "price",
                    onChanged: (text) {
                      controller.price_package = text;
                    },
                  ),
                  ExTextField(
                    id: "duration",
                    label: "duration",
                    onChanged: (text) {
                      controller.duration_package = text;
                    },
                  ),
                  ExTextField(
                    id: "description",
                    label: "description",
                    onChanged: (text) {
                      controller.description_package = text;
                    },
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 20),
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      "Pilih Toko",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 0.3,
                        color: Colors.grey[900]!,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                    child: StreamBuilder<QuerySnapshot>(
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
                        return ListView.builder(
                          itemCount: data.docs.length,
                          itemBuilder: (context, index) {
                            Map<String, dynamic> item = (data.docs[index].data()
                                as Map<String, dynamic>);
                            item["id"] = data.docs[index].id;
                            return InkWell(
                              onTap: () {
                                controller.tokoId = item["id"];
                                controller.update();
                              },
                              child: Container(
                                color:
                                    (item["id"].toString() == controller.tokoId)
                                        ? Colors.grey
                                        : Colors.transparent,
                                child: Card(
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: Colors.grey[200],
                                      backgroundImage: NetworkImage(
                                        "${item['photo']}",
                                      ),
                                    ),
                                    title: Text("${item['shop_name']}"),
                                    subtitle: Text("${item['rating']}"),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                      onPressed: () {
                        controller.addDataPackage();
                      },
                      child: const Text("Save"),
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
