import 'package:flutter/material.dart';

class QCheckBox extends StatefulWidget {
  final String? value;
  final List<Map<String, dynamic>>? items;
  final Function(List value) onChanged;
  final String label;

  const QCheckBox({
    Key? key,
    this.value,
    required this.onChanged,
    required this.label,
    this.items,
  }) : super(key: key);

  @override
  State<QCheckBox> createState() => _QCheckBoxState();
}

class _QCheckBoxState extends State<QCheckBox> {
  List<Map<String, dynamic>> items = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < widget.items!.length; i++) {
      var item = widget.items![i];

      items.add({
        "label": item["label"],
        "price": item['price'],
        "checked": false,
      });
    }
  }

  setValue() {
    List currentValue = [];
    var checkedValues = items.where((i) => i["checked"] == true).toList();
    for (var item in checkedValues) {
      currentValue.add({
        "label": item["label"],
        "price": item['price'],
      });
    }
    widget.onChanged(currentValue);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            widget.label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        ...List.generate(
          items.length,
          (index) {
            var item = items[index];
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 6.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Text(
                    "${item["label"]}",
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  Expanded(
                    child: Text(
                      "\$ ${item["price"]}",
                      style: const TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Checkbox(
                    value: item["checked"],
                    onChanged: (value) {
                      item["checked"] = value;
                      setState(() {});
                      setValue();
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
