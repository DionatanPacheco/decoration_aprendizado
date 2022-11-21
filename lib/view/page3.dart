import 'package:decoration_app/components/drawer_pag3.dart';
import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      drawer: const DrawerPag3(),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text('Iniciar chat'),
          icon: const Icon(Icons.chat)),
      body: Container(
        padding: const EdgeInsets.only(top: 35, left: 10, right: 10),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () {},
                icon: const Icon(Icons.search),
                label: const Text(
                  'Pesquisar',
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const Center(
              heightFactor: 10,
              child: Text(
                'Não há Mensagens',
                style: TextStyle(fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}
