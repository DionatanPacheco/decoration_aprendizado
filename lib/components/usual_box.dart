import 'package:flutter/material.dart';

class UsualBox extends StatelessWidget {
  final child;
  const UsualBox({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(blurRadius: 15, offset: Offset(15, 15)),
          BoxShadow(blurRadius: 15, offset: Offset(-5, -5))
        ],
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
