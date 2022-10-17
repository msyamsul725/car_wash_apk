import 'package:flutter/material.dart';

class TCheckBoxOptions extends StatefulWidget {
  String? value;
  final Function(String value) onChanged;
  final String? label;
  final String? desckription;
  final int? price;

  TCheckBoxOptions({
    Key? key,
    required this.desckription,
    required this.price,
    this.value,
    required this.onChanged,
    this.label,
  }) : super(key: key);

  @override
  State<TCheckBoxOptions> createState() => _TCheckBoxOptionsState();
}

class _TCheckBoxOptionsState extends State<TCheckBoxOptions> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isChecked = !isChecked!;
        });
      },
      child: Row(
        children: [
          Checkbox(
              value: isChecked,
              activeColor: Colors.blue,
              onChanged: (value) {}),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${widget.label}",
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${widget.desckription}",
                  maxLines: 2,
                  overflow: TextOverflow.fade,
                  style: const TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            "\$${widget.price}",
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
