import 'package:flutter/material.dart';

class BottomBarColumn extends StatelessWidget {
  final String heading, s1, s2, s3;

  const BottomBarColumn({
    Key? key,
    required this.heading,
    required this.s1,
    required this.s2,
    required this.s3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
