import 'package:flutter/material.dart';

class ExCardPackage extends StatefulWidget {
  final String? value;
  final Function(String value) onChanged;
  final String? titlePackate;
  final String? duration;
  final String? decription;
  final String? price;
  final String? photo;

  const ExCardPackage({
    Key? key,
    this.value,
    required this.onChanged,
    required this.titlePackate,
    required this.duration,
    required this.decription,
    required this.price,
    required this.photo,
  }) : super(key: key);

  @override
  State<ExCardPackage> createState() => _ExCarPackageState();
}

class _ExCarPackageState extends State<ExCardPackage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      width: 140,
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        color: Colors.blue[600],
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
                  "${widget.photo}",
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
                  "${widget.titlePackate}",
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
                  "${widget.duration}",
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
                  "${widget.decription}",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.grey[200]!.withOpacity(0.5),
                  ),
                ),
                Text(
                  "\$${widget.price}",
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
    );
  }
}
