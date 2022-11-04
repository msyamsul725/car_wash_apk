import 'package:flutter/material.dart';

class ChecBoxNew extends StatefulWidget {
  final String value;
  final Function(List Data) onChanged;

  List item;

  ChecBoxNew({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.item,
  }) : super(key: key);

  @override
  State<ChecBoxNew> createState() => _ChecBoxNewState();
}

class _ChecBoxNewState extends State<ChecBoxNew> {
  bool status = false;
  List selectedValues = [];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.item.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          var items = widget.item[index];
          bool selected =
              selectedValues.contains(items["price"]) ? true : false;

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Checkbox(
                  value: selected,
                  onChanged: (value) {
                    if (value == true) {
                      selectedValues.add(items['price']);
                    } else {
                      selectedValues.remove(items['price']);
                    }

                    widget.onChanged(selectedValues);

                    setState(() {});
                  }),
              Text(
                "${items['title']}",
                style: const TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Text(
                "\$ ${items['price']}",
                style: const TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ],
          );
        });
  }
}
