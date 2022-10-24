import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 60, left: 30),
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Configurações',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black54,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.none),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
          ],
        ),
      ),
    );
  }
}
