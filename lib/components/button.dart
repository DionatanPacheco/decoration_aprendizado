import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, this.child, this.onPressed, this.style});
  final child;
  final onPressed;
  final style;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(style: style, onPressed: onPressed, child: child);
  }
}
