import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      init: DashboardController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: 380.0,
                    height: 80.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 260.0,
                          child: Row(
                            children: const [
                              SizedBox(
                                width: 40.0,
                                child: Text(
                                  'Hey',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 140.0,
                                child: Text(
                                  "Syamsul Ma'arif",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 20.0,
                          ),
                          height: 40.0,
                          width: 40.0,
                          child: const Icon(
                            Icons.notifications,
                            color: Color(0xffA22D4E),
                            size: 26.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      right: 120.0,
                    ),
                    width: 240.0,
                    child: const Text(
                      "What do you need help today?",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color(0xffA22D4E),
                        fontWeight: FontWeight.bold,
                        fontSize: 26.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 6.0,
                      horizontal: 12.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                      border: Border.all(
                        width: 1.0,
                        color: Colors.grey[400]!,
                      ),
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.search),
                        ),
                        Expanded(
                          child: TextFormField(
                            initialValue: null,
                            decoration: const InputDecoration.collapsed(
                              filled: true,
                              fillColor: Colors.transparent,
                              hintText: "Search",
                            ),
                            onChanged: (value) {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    width: 360.0,
                    height: 200.0,
                    decoration: const BoxDecoration(
                      color: Color(0xffA22D4E),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: Image.network(
                            "https://i.ibb.co/sqpR6Vv/buble.png",
                            width: 84.0,
                            height: 84.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 80,
                          margin: const EdgeInsets.only(
                            left: 240.0,
                            top: 20.0,
                          ),
                          child: Image.network(
                            "https://i.ibb.co/M9VgS2k/buble2.png",
                            width: 84.0,
                            height: 84.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 20.0,
                            top: 30.0,
                          ),
                          width: 220,
                          height: 40,
                          child: const Text(
                            'Super Saver Week',
                            style: TextStyle(
                              fontSize: 24.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 20.0,
                            top: 70.0,
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          width: 180.0,
                          child: const Text(
                            "40% off on full car wash",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white54,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            top: 140.0,
                            left: 20.0,
                          ),
                          width: 120.0,
                          height: 40.0,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                16.0,
                              ),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "Grab Offer",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 220.0,
                            top: 100.0,
                          ),
                          width: 120,
                          height: 160.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://i.ibb.co/2gzv7pR/Car-Wash-PNG-Download-Image.png",
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          width: 120.0,
                          child: const Text(
                            "Best Service",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 80.0,
                          child: Text(
                            "See All",
                            style: TextStyle(
                              color: Color(0xffA22D4E),
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 180.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.0,
                        color: Colors.black,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 100.0,
                            child: Image.network(
                              "https://i.ibb.co/k6hRnpr/icon-a.png",
                              width: 64.0,
                              height: 64.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            width: 60.0,
                            child: Text(
                              "Classic Washing",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          width: 180.0,
                          child: const Text(
                            "Recomended Shop",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 80.0,
                          child: Text(
                            "See All",
                            style: TextStyle(
                              color: Color(0xffA22D4E),
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                        height: 140.0,
                        child: ListView.builder(
                          itemCount: data.docs.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            Map<String, dynamic> item = (data.docs[index].data()
                                as Map<String, dynamic>);
                            item["id"] = data.docs[index].id;
                            var carwash = CarWash.fromJson(item);
                            return InkWell(
                              onTap: () =>
                                  Get.to(SelectPackageView(item: carwash)),
                              child: Container(
                                width: 360.0,
                                height: 140.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      16.0,
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      margin:
                                          const EdgeInsets.only(left: 300.0),
                                      width: 77,
                                      height: 40.0,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            "https://i.ibb.co/5xFY8Y8/Untitled-3.png",
                                          ),
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                      child: const Center(
                                        child: Icon(
                                          Icons.thumb_up,
                                          color: Colors.white,
                                          size: 18.0,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                        left: 20.0,
                                        top: 20.0,
                                      ),
                                      width: 100.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            carwash.photo ??
                                                "https://i.ibb.co/S32HNjD/no-image.jpg",
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
                                    Container(
                                      margin: const EdgeInsets.only(
                                        left: 124.0,
                                      ),
                                      width: 220.0,
                                      height: 140.0,
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 20.0,
                                          ),
                                          SizedBox(
                                            height: 40.0,
                                            child: Center(
                                              child: Text(
                                                carwash.shopName ?? "_",
                                                style: const TextStyle(
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30.0,
                                            child: SizedBox(
                                              height: 80.0,
                                              child: Row(
                                                children: [
                                                  const Icon(
                                                    Icons.fmd_good,
                                                    size: 24.0,
                                                    color: Colors.black54,
                                                  ),
                                                  SizedBox(
                                                    width: 100.0,
                                                    child: Center(
                                                      child: Text(
                                                        carwash.addres ?? "_",
                                                        style: const TextStyle(
                                                          color: Colors.black54,
                                                          fontSize: 16.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                          SizedBox(
                                            height: 20.0,
                                            child: SizedBox(
                                              height: 100.0,
                                              child: Row(
                                                children: const [
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.orange,
                                                    size: 16.0,
                                                  ),
                                                  SizedBox(
                                                    width: 100.0,
                                                    child: Text(" (300)"),
                                                  ),
                                                  Expanded(
                                                    child: SizedBox(
                                                      height: 20.0,
                                                      width: 100.0,
                                                      child: Text(
                                                        "30% Off",
                                                        textAlign:
                                                            TextAlign.right,
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xffA22D4E),
                                                          fontSize: 14.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
