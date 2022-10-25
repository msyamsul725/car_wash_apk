import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectPackageView extends StatelessWidget {
  final CarWash item;
  const SelectPackageView({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectPackageController>(
      init: SelectPackageController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text(
              "select package",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "${item.photo}",
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 180,
                    child: StreamBuilder<QuerySnapshot>(
                      stream: FirebaseFirestore.instance
                          .collection("package_item")
                          .where("toko_id", isEqualTo: item.id)
                          .snapshots(),
                      builder: (context, snapshot) {
                        if (snapshot.hasError) return const Text("Error");
                        if (snapshot.data == null) return Container();
                        if (snapshot.data!.docs.isEmpty) {
                          return const Text("No Data");
                        }
                        final data = snapshot.data!;
                        return SizedBox(
                          height: 140.0,
                          child: ListView.builder(
                            itemCount: data.docs.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              Map<String, dynamic> item = (data.docs[index]
                                  .data() as Map<String, dynamic>);
                              item["id"] = data.docs[index].id;
                              return InkWell(
                                onTap: () {
                                  controller.selectedPackage =
                                      item["id"].toString();
                                },
                                child: ExCardPackage(
                                  onChanged: (value) {
                                    (controller.selectedPackage ==
                                            item["id"].toString())
                                        ? Colors.orange
                                        : Colors.white;
                                  },
                                  photo: item["photo"],
                                  titlePackate: item["title_package"],
                                  price: item["price_package"],
                                  duration: item["duration_package"],
                                  decription: item["description_package"],
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      "Add options",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ChecBoxNew(
                    onChanged: (data) {
                      int price = 0;
                      for (var element in data) {
                        price = element + price;
                      }
                      controller.price = price;
                      controller.update();
                      debugPrint("harga: $price");
                    },
                    price: "2000",
                    label: "Tempe",
                    value: "false",
                    item: const [
                      {"title": "Wax", "price": 20, "status": false},
                      {
                        "title": "Scratch Removal",
                        "price": 30,
                        "status": false
                      },
                      {
                        "title": "Water-dot Removal",
                        "price": 40,
                        "status": false
                      },
                      {
                        "title": "Post descri sap",
                        "price": 42,
                        "status": false
                      },
                    ],
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // <-- Radius
                ),
              ),
              onPressed: () => Get.to(const SelectDateView()),
              child: const Text("Next"),
            ),
          ),
        );
      },
    );
  }
}
