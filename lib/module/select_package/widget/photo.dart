import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class PhotoWars extends StatefulWidget {
  final CarWash item;
  final Function(String data) onChanged;
  const PhotoWars({
    required this.onChanged,
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<PhotoWars> createState() => _PhotoWarsState();
}

class _PhotoWarsState extends State<PhotoWars> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            "${widget.item.photo}",
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            16.0,
          ),
        ),
      ),
    );
  }
}
