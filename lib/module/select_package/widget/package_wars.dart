import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../models/carWash/car_wash.dart';

class PackageWars extends StatefulWidget {
  final CarWash item;
  final Function(String data) onChanged;
  const PackageWars({
    Key? key,
    required this.onChanged,
    required this.item,
  }) : super(key: key);

  @override
  State<PackageWars> createState() => _PaclageWarsState();
}

class _PaclageWarsState extends State<PackageWars> {
  String? selectedPackage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection("package_item")
            .where("toko_id", isEqualTo: widget.item.id)
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
                Map<String, dynamic> item =
                    (data.docs[index].data() as Map<String, dynamic>);
                item["id"] = data.docs[index].id;
                return InkWell(
                  onTap: () {
                    selectedPackage = item["id"].toString();
                    widget.onChanged(selectedPackage.toString());
                    setState(() {});
                  },
                  child: Container(
                    height: 180.0,
                    width: 140,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: (selectedPackage == item['id'].toString())
                          ? const Color(0xffA22D4E)
                          : Colors.grey,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          10.0,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          height: 80.0,
                          width: 130.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                "${item['photo']}",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                5.0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "${item['title_package']}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${item['duration_package']}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.grey[200]!.withOpacity(0.5),
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "${item['description_package']}",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.grey[200]!.withOpacity(0.5),
                                ),
                              ),
                              Text(
                                "\$${item['price_package']}",
                                style: const TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
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
    );
  }
}
