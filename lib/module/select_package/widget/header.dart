import 'package:flutter/material.dart';

class HeaderA extends StatefulWidget {
  const HeaderA({
    Key? key,
  }) : super(key: key);

  @override
  State<HeaderA> createState() => _HeaderAState();
}

class _HeaderAState extends State<HeaderA> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      width: MediaQuery.of(context).size.width,
      child: const Text(
        "Pilih Package :",
        textAlign: TextAlign.left,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
