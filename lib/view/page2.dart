import 'package:decoration_app/components/usual_box.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const UsualBox(child: Text('Pagina 2')),
      ),
    );
  }
}
