import 'package:flutter/material.dart';
import '../../../services/selected_date_services.dart';
import '../controller/select_date_controller.dart';

import 'package:get/get.dart';

class SelectDateView extends StatelessWidget {
  const SelectDateView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectDateController>(
      init: SelectDateController(),
      builder: (controller) {
        controller.view = this;

        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 15),
                      width: MediaQuery.of(context).size.width,
                      child: const Text(
                        "Appoitment date",
                        textAlign: TextAlign.left,
                        style: TextStyle(
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
                          vertical: 4.0, horizontal: 15),
                      width: MediaQuery.of(context).size.width,
                      child: const Text(
                        "Select Day",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 80.0,
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ListView.builder(
                        itemCount: SelectedDateServices.selectedDate.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          var item = SelectedDateServices.selectedDate[index];

                          return InkWell(
                            onTap: (() {
                              controller.selectedDay =
                                  item['DateDay'].toString();
                              controller.refresh();
                            }),
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              height: 80.0,
                              width: 50,
                              decoration: BoxDecoration(
                                color: (controller.selectedDay ==
                                        item['DateDay'].toString())
                                    ? Colors.blue
                                    : Colors.grey[200],
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  Text(
                                    "${item['DateDay']}",
                                    style: TextStyle(
                                      color: (controller.selectedDay ==
                                              item['DateDay'].toString())
                                          ? Colors.white
                                          : Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "${item['Date']}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: (controller.selectedDay ==
                                              item['DateDay'].toString())
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 15),
                      width: MediaQuery.of(context).size.width,
                      child: const Text(
                        "Select time",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Wrap(
                        direction: Axis.horizontal,
                        runSpacing: 5,
                        spacing: 30,
                        children: List.generate(
                            SelectedDateServices.selectedTime.length, (index) {
                          var item = SelectedDateServices.selectedTime[index];

                          return InkWell(
                            onTap: () {
                              controller.selectedTime = item.toString();
                              controller.refresh();
                            },
                            child: Container(
                              height: 50.0,
                              width: 150,
                              decoration: BoxDecoration(
                                color:
                                    (item.toString() == controller.selectedTime)
                                        ? Colors.blue
                                        : Colors.grey[200],
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    10.0,
                                  ),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  item,
                                  style: TextStyle(
                                    color: (item.toString() ==
                                            controller.selectedTime)
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 15.0,
                                  ),
                                ),
                              ),
                            ),
                          );
                        })),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: Container(
              height: 50,
              margin: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.shopping_cart_checkout,
                      size: 24.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text("Bayar"),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
