import 'package:flutter/material.dart';

import '../components/usual_box.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const UsualBox(child: Text('Pagina 3')),
      ),
    );
  }
}
