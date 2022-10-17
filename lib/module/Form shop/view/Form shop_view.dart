import 'package:fhe_template/shared/widget/image_picker/image_picker.dart';
import 'package:fhe_template/shared/widget/location_picker/location_picker.dart';
import 'package:fhe_template/shared/widget/rating/rating.dart';
import 'package:fhe_template/shared/widget/textfield/textarea.dart';
import 'package:fhe_template/shared/widget/textfield/textfield.dart';
import 'package:flutter/material.dart';
import '../controller/Form shop_controller.dart';

import 'package:get/get.dart';

class FormShopView extends StatelessWidget {
  const FormShopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FormShopController>(
      init: FormShopController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("FormShop"),
            actions: [
              ElevatedButton.icon(
                icon: const Icon(Icons.save),
                label: const Text("Save"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => controller.doSave(),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: const [
                  //body
                  ExTextField(
                    id: "shop_name",
                    label: "Shop Name",
                  ),
                  ExImagePicker(
                    id: "photo",
                    label: "Photo",
                  ),
                  ExLocationPicker(
                    id: "addres",
                    label: "Addres",
                  ),
                  ExRating(
                    id: "rating",
                    label: "Rating",
                  ),
                  ExTextArea(id: "description", label: "Description"),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
