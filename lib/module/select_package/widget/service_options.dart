import 'package:flutter/material.dart';

class ExCardPackage extends StatefulWidget {
  final String? value;
  final Function(String value) onChanged;
  final String? titlePackate;
  final String? duration;
  final String? decription;
  final String? price;

  const ExCardPackage({
    Key? key,
    this.value,
    required this.onChanged,
    required this.titlePackate,
    required this.duration,
    required this.decription,
    required this.price,
  }) : super(key: key);

  @override
  State<ExCardPackage> createState() => _ExCarPackageState();
}

class _ExCarPackageState extends State<ExCardPackage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      width: 150,
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
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://i.ibb.co/3pPYd14/freeban.jpg",
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
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
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                Container(
                  height: 18.0,
                  width: 30.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        5.0,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "\$${widget.price}",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[600]!,
                      ),
                    ),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
