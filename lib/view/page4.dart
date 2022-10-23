import 'package:flutter/material.dart';

import '../components/usual_box.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const UsualBox(child: Text('Pagina 4')),
      ),
    );
  }
}
