// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DesingText extends StatelessWidget {
  const DesingText({
    Key? key,
    required this.title,
    required this.titleSize,
  }) : super(key: key);
  final String title;
  final double titleSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          color: Colors.black,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.none),
    );
  }
}
