import 'package:fhe_template/module/utils/time_extension.dart';
import 'package:flutter/material.dart';
import '../../../services/selected_date_services.dart';
import '../controller/select_date_controller.dart';

import 'package:get/get.dart';

class SelectDateView extends StatelessWidget {
  Map item;
  SelectDateView({
    Key? key,
    required this.item,
  }) : super(key: key);

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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                        ),
                        child: ListView.builder(
                          itemCount: 30,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            var item =
                                DateTime.now().add(Duration(days: index));

                            return Obx(
                              () {
                                return InkWell(
                                  onTap: () =>
                                      controller.selectedDay.value = item,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    height: 60.0,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color:
                                          (controller.selectedDay.value == null)
                                              ? Colors.grey[200]
                                              : controller.selectedDay.value!
                                                      .isAtSameMomentAs(item)
                                                  ? const Color(0xffA22D4E)
                                                  : Colors.grey[200],
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(24.0),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 30.0,
                                        ),
                                        // Text(
                                        //   item.shortMonthName,
                                        //   style: const TextStyle(
                                        //     color: Colors.blue,
                                        //     fontWeight: FontWeight.bold,
                                        //   ),
                                        // ),
                                        // const SizedBox(
                                        //   height: 10.0,
                                        // ),

                                        (controller.selectedDay.value == null)
                                            ? Text(
                                                item.shortMonthName,
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                ),
                                              )
                                            : (controller.selectedDay.value!
                                                    .isAtSameMomentAs(item))
                                                ? Text(
                                                    item.shortMonthName,
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  )
                                                : Text(
                                                    item.shortMonthName,
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xffA22D4E),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        (controller.selectedDay.value == null)
                                            ? Text(
                                                "${item.day}",
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                ),
                                              )
                                            : (controller.selectedDay.value!
                                                    .isAtSameMomentAs(item))
                                                ? CircleAvatar(
                                                    radius: 12,
                                                    backgroundColor:
                                                        Colors.white,
                                                    child: Text(
                                                      "${item.day}",
                                                      style: const TextStyle(
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  )
                                                : Text(
                                                    "${item.day}",
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xffA22D4E),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
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
                                        ? const Color(0xffA22D4E)
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
                  backgroundColor: const Color(0xffA22D4E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                  ),
                ),
                onPressed: () => controller.doBuy(),
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
