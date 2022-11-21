import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 60, left: 10),
        alignment: Alignment.topLeft,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Configurações',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black54,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.none),
                ),
                const Padding(padding: EdgeInsets.all(12)),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        backgroundColor: Colors.transparent,
                      ),
                      icon: const Icon(Icons.search),
                      onPressed: () {},
                      label: const Text(
                        'Pesquisar Configurações',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontStyle: FontStyle.italic),
                      )),
                ),
                const Padding(padding: EdgeInsets.all(10)),
                const InkWell(
                  borderRadius: BorderRadius.all(Radius.elliptical(5, 5)),
                  child: ListTile(
                    leading: Icon(Icons.wifi),
                    title: Text('Wi-Fi'),
                    subtitle: Text('Desconectado'),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                    ),
                  ),
                ),
                const ListTile(
                    leading: Icon(Icons.language),
                    title: Text('Idioma'),
                    subtitle: Text("Portugues/br"),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                    )),
                const Divider(
                  thickness: 2,
                ),
                const ListTile(
                    leading: Icon(Icons.color_lens),
                    title: Text('Tema'),
                    subtitle: Text("Cor"),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                    )),
                const ListTile(
                    leading: Icon(Icons.language),
                    title: Text('Idioma'),
                    subtitle: Text("Portugues/br"),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
